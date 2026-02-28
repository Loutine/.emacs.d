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
  (lsp-completion-provider :none)
  (lsp-completion-default-behaviour :insert)
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  ;;(defun my/lsp-mode-setup-completion ()
  ;;   (setf (alist-get 'styles (alist-get 'lsp-capf completion-category-defaults))
  ;;         '(orderless))) ;; Configure orderless
    ;; (setq-local completion-at-point-functions
	;; 	(list (cape-capf-super
	;; 	       #'lsp-completion-at-point
	;; 	       #'cape-file
	;; 	       #'cape-keyword))))
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
		 (go-ts-mode . lsp-deferred)
		 ;;(go-mode . lsp-deferred)
         (c-mode . lsp)
		 (haskell-mode . lsp)
		 (tuareg-mode . lsp)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration)
		 ;; (lsp-completion-mode . my/lsp-mode-setup-completion)
		 )
  :commands (lsp lsp-deferred))

;; ;; optionally
(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode
  :custom
  (lsp-ui-sideline-show-diagnostics t)
  (lsp-ui-sideline-show-hover nil)
)
;; (use-package lsp-treemacs :commands lsp-treemacs-errors-list)

;; ;; optionally if you want to use debugger
;; (use-package dap-mode)
;; ;; (use-package dap-LANGUAGE) to load the dap adapter for your language

(provide 'init-lsp)
;;; init-lsp.el ends here
