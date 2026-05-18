;;; note-zk.el --- zk configuration                  -*- lexical-binding: t; -*-

;; Copyright (C) 2026  Uhuru

;; Author: Uhuru <uhuru@nixos>
;; Keywords: text

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

(use-package zk4e
  :ensure ( :url "https://codeberg.org/mcookly/zk4e"
			:branch "main"
			;; You may want to pin a commit until the first 0.x version
			;; is released (hopefully soon).
			:rev :newest)
  :custom (zk4e-notebook-directories '(("Note" . "~/Note")))
  :config
  (zk4e-select-notebook "Note"))

(with-eval-after-load 'lsp-mode
  (require 'zk-lsp))
(provide 'note-zk)
;;; note-zk.el ends here
