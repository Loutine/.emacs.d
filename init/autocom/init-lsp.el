;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap
  (setq lsp-keymap-prefix "C-c l")
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
	 (c-mode . lsp)
	 (c++-mode . lsp)
	 ;;(python-mode . lsp)
	 (haskell-mode . lsp)
	 ;;(go-mode . lsp)
	 (scala-mode . lsp)
	 ;;(julia-mode . lsp)
	 (js-mode . lsp)
	 (css-mode . lsp)
	 (tuareg-mode . lsp)
	 (lua-mode . lsp)
	 ;;(reason-mode . lsp)
	 (web-mode . lsp)
  
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp
  :config
   (setq gc-cons-threshold 100000000
	lsp-prefer-flymake nil
	lsp-auto-guess-root nil)
 )

;; optionally
(use-package lsp-ui :commands lsp-ui-mode)
;; if you are ivy user
(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list)
(use-package tree-sitter)
(use-package tree-sitter-langs)
;; (require 'tree-sitter)
;; (require 'tree-sitter-langs)

(provide 'init-lsp)
