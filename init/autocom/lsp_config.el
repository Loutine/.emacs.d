;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package lsp-mode
  :ensure t
  :hook
  ;;(c-mode . lsp)
  ;;(c++-mode . lsp)
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
  (setq lsp-prefer-flymake nil
	lsp-auto-guess-root t)
  )
  

(use-package lsp-ui
  :ensure t
  :commands lsp-ui
  :config
  (setq ;; lsp-signature-auto-activate t
	;; lsp-signature-doc-lines 40
   ;; lsp-signature-render-documentation t
   lsp-ui-doc-enable t
   lsp-ui-sideline-show-hover t
   lsp-ui-doc-position 'bottom))

(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
(use-package lsp-treemacs
  :ensure t
  :config
  (lsp-treemacs-sync-mode 1)
  )
(use-package projectile
  :ensure t
  :bind
  ("C-c p" . projectile-command-map)
  :init
  :config
   (setq projectile-keymap-prefix (kbd "C-c p"))
  ;(setq projectile-completion-system 'ivy)
  )
(use-package counsel-projectile
  :ensure t
  :init
  (counsel-projectile-mode +1))
  
(provide 'lsp_config)
;;; lsp_config.el ends here
