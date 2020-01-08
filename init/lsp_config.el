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
  (setq lsp-enable-semantic-highlighting t)
  )

(use-package lsp-ui
  :ensure t
  :commands lsp-ui
  :config
  (setq lsp-prefer-flymake nil)
  )

(use-package lsp-treemacs
  :ensure
  )

(use-package dap-mode
  :ensure t
  )

(provide 'lsp_config)
;;; lsp_config.el ends here
