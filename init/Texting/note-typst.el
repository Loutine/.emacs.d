;;; note-typst.el --- typst configuration            -*- lexical-binding: t; -*-

;; Copyright (C) 2024  Uhuru

;; Author: Uhuru <uhuru@nixos>
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

(use-package typst-ts-mode
  :after (lsp-mode)
  :ensure (:type git :host codeberg :repo "meow_king/typst-ts-mode"
                 :files (:defaults "*.el"))
  :custom
  (typst-ts-mode-enable-raw-blocks-highlight t)
  :hook
  (typst-ts-mode . lsp-deferred)
  :config
  (keymap-set typst-ts-mode-map "C-c C-c" #'typst-ts-tmenu)
  (add-to-list 'lsp-language-id-configuration '(".*\\.typ$" . "typst"))
  (lsp-register-client (make-lsp-client
                      :new-connection (lsp-stdio-connection "typst-lsp")
                      :activation-fn (lsp-activate-on "typst")
                      :server-id 'typst-lsp)))



(provide 'note-typst)
;;; note-typst.el ends here
