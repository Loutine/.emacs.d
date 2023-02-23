;;; init-lspbridge.el ---                            -*- lexical-binding: t; -*-

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
(use-package electric
  :config
  (electric-pair-mode t))
(use-package lsp-bridge
  :after (yasnippet)
  :straight `(lsp-bridge
	      :type git
	      :host github
	      :repo "manateelazycat/lsp-bridge"
	      :build (:not compile)
	      :files (:defaults "*"))
  :config
  (global-lsp-bridge-mode))


(provide 'init-lspbridge)
;;; init-lspbridge.el ends here
