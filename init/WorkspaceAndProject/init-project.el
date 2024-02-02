;;; init-project.el --- project.el configuration     -*- lexical-binding: t; -*-

;; Copyright (C) 2022  uhuru

;; Author: uhuru <Uhuru-loutine@outlook.com>
;; Keywords: 

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; 

;;; Code:
(defcustom project-root-markers
  '("^Cargo\\.toml$" "^compile_commands\\.json$" "^compile_flags\\.txt$"
    "^project\\.clj$" "^\\.project$" "^deps\\.edn$" "^shadow-cljs\\.edn$"
    "^build\\.sbt$" "^.*?\\.cabal$")		
  "Files or directories that indicate the root of a project."
  :type '(repeat string)
  :group 'project)
(defun project-root-p (path)
  "Check if the current PATH has any of the project root markers."
  (catch 'found
    (let ((files (directory-files path)))
      (dolist (regexp project-root-markers)
	(dolist (file files)
	  (when (string-match-p regexp file)
	    (throw 'found file)))))))
(defun project-find-root (path)
  "Search up the PATH for `project-root-markers'."
  (let ((path (expand-file-name path)))
    (catch 'found
      (while (let ((p (if (string-match-p tramp-file-name-regexp path)
			  (tramp-file-local-name path)
			path)))
	       ;; for tramp file name like /sudo:user@host:/path/to
	       ;; without the tramp-file-local-name the function may
	       ;; get into a dead loop at /sudo:user@host:/ here
	       (not (string= "/" p)))
	(if (not (project-root-p path))
	    (setq path (file-name-directory (directory-file-name path)))
	  (throw 'found (cons 'transient path)))))))
(defun my/project-override (dir)
  (let ((override (locate-dominating-file dir ".project")))
    (if override
	(cons 'local override) nil)))

(use-package project
  :elpaca nil
  :config
  (add-hook 'project-find-functions #'my/project-override)
  (add-hook 'project-find-functions #'project-find-root)
  )

(cl-defmethod project-root ((project (head local)))
  (cdr project))
(provide 'init-project)
;;; init-project.el ends here
