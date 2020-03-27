(use-package markdown-mode
  :ensure t
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :hook (markdown-bullets . markdown-mode)
  :init (setq markdown-command "multimarkdown"))
(provide 'set_md)
