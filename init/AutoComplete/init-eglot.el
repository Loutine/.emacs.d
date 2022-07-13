;;; init-eglot.el --- eglot configuration            -*- lexical-binding: t; -*-

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
(use-package emacs
  :config
  (electric-pair-mode 1)
  (electric-quote-mode 1)
  (electric-indent-mode 1)
  (electric-layout-mode 1))
(use-package eglot
  :hook (
	 (c-mode . eglot-ensure)
	 (tuareg-mode . eglot-ensure)
	 (elixir-mode . eglot-ensure)
	 ))
(use-package tree-sitter)
(use-package tree-sitter-langs
  :hook ((c-mode c++-mode) . tree-sitter-hl-mode)
)

(provide 'init-eglot)
;;; init-eglot.el ends here
