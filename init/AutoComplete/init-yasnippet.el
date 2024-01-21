(use-package yasnippet
  :elpaca t
  :hook
  ((prog-mode . yas-minor-mode)
   (org-mode . yas-minor-mode))
  )
(use-package yasnippet-snippets
  :elpaca t
  :after (yasnippet))
(provide 'init-yasnippet)
