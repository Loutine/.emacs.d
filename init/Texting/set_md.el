(require 'markdown-bullets)
(use-package markdown-mode
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :hook (markdown-mode . markdown-bullets-mode)
  :init (setq markdown-command "multimarkdown"
	      markdown-split-window-direction 'right))
(provide 'set_md)
