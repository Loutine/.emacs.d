;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package lsp-mode
  :ensure t
  :hook
  (c-mode . lsp)
  (c++-mode . lsp)
  (python-mode . lsp)
  (go-mode . lsp)
  :commands lsp
  :config
  (setq lsp-prefer-flymake nil)
  )

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
  :config
  (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (projectile-mode +1))

(use-package dap-mode
  :ensure t
  )
(provide 'lsp_config)
;;; lsp_config.el ends here
