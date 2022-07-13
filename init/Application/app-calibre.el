;;; app-calibre.el --- calibre emacs client configure  -*- lexical-binding: t; -*-

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
(use-package pdf-tools
  :straight (pdf-tools :type git :host github :repo "vedang/pdf-tools"))
(use-package calibredb
  :config
  (setq calibredb-root-dir "~/Calibre Library"
	calibredb-db-dir (expand-file-name "metadata.db" calibredb-root-dir))
)
(provide 'app-calibre)
;;; app-calibre.el ends here
