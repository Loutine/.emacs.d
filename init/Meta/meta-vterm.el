(use-package vterm)
(use-package vterm-toggle
  :bind
  ("C-<f2>" . vterm-toggle-cd)
  ("C-<f1>" . vterm-toggle)
  (:map vterm-mode-map
	("M-q" . vterm-toggle)
	([(control return)] . vterm-toggle-insert-cd)
	("s-n" . vterm-toggle-forward)
	("s-p" . vterm-toggle-backward))
  :config

)

(provide 'meta-vterm)
	 
