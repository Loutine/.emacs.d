;;; init-treesit.el --- tree-sitter configuration    -*- lexical-binding: t; -*-

;; Copyright (C) 2023  Uhuru

;; Author: Uhuru <uhuru@archlinux>
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

(use-package treesit
  :straight nil
  :init
  (setq treesit-extra-load-path `(,(expand-file-name "~/.emacs.d/tree-sitter/dist/"))))

(provide 'init-treesit)
;;; init-treesit.el ends here
