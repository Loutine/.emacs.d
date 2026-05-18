;;; init-lsp.el --- configuragion for lsp-mode       -*- lexical-binding: t; -*-

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
(use-package flycheck
  :ensure t
  :config
  (add-hook 'after-init-hook #'global-flycheck-mode))
(use-package lsp-mode
  :ensure t
  :after (which-key orderless)
  :custom
  ;;(lsp-completion-provider :none)
  (lsp-completion-default-behaviour :replace)
  (lsp-signature-render-documentation nil)
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
		 (go-ts-mode . lsp-deferred)
         (c-mode . lsp)
		 (rust-mode . lsp-deferred)
		 (haskell-mode . lsp)
		 (tuareg-mode . lsp)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration)
		 (lsp-mode . evil-normalize-keymaps)
		 )
  :commands (lsp lsp-deferred)
  :config
  (setq lsp-keymap-prefix "c-l l")
  (evil-define-key 'normal lsp-mode-map (kbd "g l") lsp-command-map)
  )

;; ;; optionally
(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode
  :custom
  (lsp-ui-sideline-show-diagnostics t)
  (lsp-ui-sideline-show-hover nil)
  )
(use-package lsp-treemacs
  :ensure t
  :commands lsp-treemacs-errors-list)

;; ;; optionally if you want to use debugger
;; (use-package dap-mode)
;; ;; (use-package dap-LANGUAGE) to load the dap adapter for your language

(provide 'init-lsp)
;;; init-lsp.el ends here
