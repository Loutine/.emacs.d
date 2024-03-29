(use-package vterm
  :elpaca t)
(use-package vterm-toggle
  :elpaca t
  :bind
  ("C-<f2>" . vterm-toggle-cd)
  ("C-=" . vterm-toggle)
  (:map vterm-mode-map
	("M-q" . vterm-toggle)
	([(control return)] . vterm-toggle-insert-cd)
	("s-n" . vterm-toggle-forward)
	("s-p" . vterm-toggle-backward))
  :config

)

(provide 'meta-vterm)
	 
