(use-package rustic
  :elpaca t
  :config
  (remove-hook 'rustic-mode-hook 'flycheck-mode)
  (setq rustic-lsp-client 'eglot))
(provide 'lang-rust)
