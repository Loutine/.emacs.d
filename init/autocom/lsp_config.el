;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package lsp-mode
  :ensure t
  :hook
  (c-mode . lsp)
  (c++-mode . lsp)
  (python-mode . lsp)
  ;;(go-mode . lsp)
  (elisp-mode . lsp)
  (js-mode . lsp)
  (css-mode . lsp)
  :commands lsp
  :config
  (setq lsp-prefer-flymake nil))
  

(use-package lsp-ui
  :ensure t
  :commands lsp-ui
  :config
  (setq lsp-prefer-flymake nil)
  )
(use-package company-lsp :commands company-lsp)
(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
(use-package lsp-treemacs
  :ensure t
  )
(use-package projectile
  :ensure t
  :bind
  ;("s-p" . projectile-command-map)
  ("C-c p" . projectile-command-map)
  :config
  (projectile-mode +1)
  )
(use-package counsel-projectile
  :ensure t
  :init
  (counsel-projectile-mode)
  )
(provide 'lsp_config)
;;; lsp_config.el ends here
