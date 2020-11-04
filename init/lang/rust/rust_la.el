(use-package rustic
  :ensure t
  :hook
  (rust-mode . rustic-mode)
  (rustic-mode . electric-pair-mode)
  :config
  (setq rustic-lsp-server 'rust-analyzer))
(provide 'rust_la)
  
  
