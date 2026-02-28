(use-package yasnippet
  :ensure t
  :hook
  ((prog-mode . yas-minor-mode)
   (org-mode . yas-minor-mode))
  )
(use-package yasnippet-snippets
  :ensure t
  :after (yasnippet))
(provide 'init-yasnippet)
