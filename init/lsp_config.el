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

(use-package lsp-treemacs
  :defer t
  :ensure
  )

(use-package dap-mode
  :ensure t
  :defer t
  )

(provide 'lsp_config)
