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
(defun my/project-override (dir)
  (let ((override (locate-dominating-file dir ".project")))
    (if override
	(cons 'local override) nil)))

(use-package project
  :config
  (add-hook 'project-find-functions #'my/project-override))

(cl-defmethod project-root ((project (head local)))
  (cdr project))
(provide 'init-project)
;;; init-project.el ends here
