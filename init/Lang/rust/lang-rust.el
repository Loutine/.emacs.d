(use-package rustic
  :ensure t
  :config
  (setq lsp-rust-analyzer-cargo-watch-command "clippy")
  :custom
  (rustic-format-on-save nil)
  (rustic-cargo-use-last-stored-arguments t))
(provide 'lang-rust)
