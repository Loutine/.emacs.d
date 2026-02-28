(setq package-enable-at-startup nil)
(setq custom-file "~/.emacs.d/custom.el")
(setq gc-cons-threshold 100000000)
(setenv "LSP_USE_PLISTS" "true")
(let ((default-directory "~/.emacs.d/init/"))
  (normal-top-level-add-subdirs-to-load-path))

(provide 'early-init)
