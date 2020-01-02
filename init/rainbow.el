(use-package rainbow-mode
  :defer t
  :ensure t)

(use-package rainbow-delimiters
  :ensure t
  :defer t
  :hook (scheme-mode . rainbow-delimiters-mode))

(provide 'rainbow)
