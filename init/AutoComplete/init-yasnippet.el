(use-package yasnippet
  :hook
  ((prog-mode . yas-minor-mode)
   (org-mode . yas-minor-mode))
  )
(use-package yasnippet-snippets
  :after (yasnippet))
(provide 'init-yasnippet)
