;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package lsp-mode
  :ensure t
  :hook
  (c-mode . lsp)
  (c++-mode . lsp)
  ;;(python-mode . lsp)
  ;;(haskell-mode . lsp)
  ;;(go-mode . lsp)
  ;;(emacs-lisp-mode . lsp)
  (julia-mode . lsp)
  (js-mode . lsp)
  (css-mode . lsp)
  (tuareg-mode . lsp)
  ;(rustic-mode . lsp)
  :commands lsp
  :config
  (setq gc-cons-threshold 100000000
	lsp-prefer-flymake nil
	lsp-auto-guess-root nil)
  )
  

(use-package lsp-ui
  :ensure t
  :commands lsp-ui
  :config
  (setq lsp-ui-doc-enable t
	lsp-ui-sideline-show-hover t
	lsp-ui-doc-position 'bottom))

(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
(use-package lsp-treemacs
  :ensure t
  :config
  (lsp-treemacs-sync-mode 1)
  )
  
(provide 'lsp_config)
;;; lsp_config.el ends here
