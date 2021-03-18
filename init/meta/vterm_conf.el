(use-package vterm
  :ensure t)
(use-package vterm-toggle
  :ensure t
  :bind
  ("C-<f2>" . vterm-toggle-cd)
  ("M-q" . vterm-toggle)
  (:map vterm-mode-map
	("M-q" . vterm-toggle)
	([(control return)] . vterm-toggle-insert-cd)
	("s-n" . vterm-toggle-forward)
	("s-p" . vterm-toggle-backward))
  :config
  (setq vterm-toggle-fullscreen-p nil)
  (add-to-list 'display-buffer-alist
               '((lambda(bufname _) (with-current-buffer bufname (equal major-mode 'vterm-mode)))
                 (display-buffer-reuse-window display-buffer-at-bottom)
                 ;;(display-buffer-reuse-window display-buffer-in-direction)
                 ;;display-buffer-in-direction/direction/dedicated is added in emacs27
                 ;;(direction . bottom)
                 ;;(dedicated . t) ;dedicated is supported in emacs27
                 (reusable-frames . visible)
                 (window-height . 0.3)))
)

(provide 'vterm_conf)
	 
