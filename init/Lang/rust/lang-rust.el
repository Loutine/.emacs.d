(setq rust-analyzer-path "~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/bin/rust-analyzer")
(use-package rustic
  :config
  (setq lsp-rust-analyzer-store-path rust-analyzer-path
	rustic-lsp-server 'rust-analyzer
	))
(provide 'lang-rust)
