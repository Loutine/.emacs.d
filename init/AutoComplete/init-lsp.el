;;; package --- Summary
;;; Commentary:
;;; Code:
(setenv "LSP_USE_PLISTS" "true")
(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap
  (setq lsp-keymap-prefix "C-c l"
	lsp-print-io t
	lsp-use-plists t)
  :hook (
	 (c-mode . lsp)
	 (c++-mode . lsp)
	 (python-mode . lsp)
	 (haskell-mode . lsp-deferred)
	 (go-mode . lsp-deferred)
	 (scala-mode . lsp-deferred)
	 ;;(julia-mode . lsp)
	 (js2-mode . lsp-deferred)
	 (tuareg-mode . lsp-deferred)
	 (lua-mode . lsp-deferred)
	 ;;for latex
	 (TeX-mode . lsp)
	 (LaTeX-mode . lsp)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp
 )

;; optionally
;(use-package lsp-ui :commands lsp-ui-mode)
;(use-package lsp-tremacs :commands lsp-treemacs-errors-list)
;; (use-package tree-sitter)
;; (use-package tree-sitter-langs)
(provide 'init-lsp)
