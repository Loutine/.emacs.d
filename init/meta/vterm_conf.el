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
	("s-p" . vterm-toggle-backward)))

(provide 'vterm_conf)
	 
