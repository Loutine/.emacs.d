;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package lsp-mode
  :ensure t
  :hook
  (c-mode . lsp)
  (c++-mode . lsp)
  (python-mode . lsp)
  ;;(haskell-mode . lsp)
  ;;(go-mode . lsp)
  ;;(emacs-lisp-mode . lsp)
  (js-mode . lsp)
  (css-mode . lsp)
  (tuareg-mode . lsp)
  :commands lsp
  :config
  (setq lsp-prefer-flymake nil))
  

(use-package lsp-ui
  :ensure t
  :commands lsp-ui
  :bind
  ("C-c Tab" . lsp-ui-doc-glance)
  :config
  (setq lsp-ui-sideline-show-hover t
	lsp-ui-doc-enable nil))
       
(use-package company-lsp :commands company-lsp)
(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
(use-package lsp-treemacs
  :ensure t
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
