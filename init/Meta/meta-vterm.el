(add-to-list 'elpaca-ignored-dependencies 'vterm)
(use-package vterm
  :ensure nil
)
(use-package vterm-toggle
  :ensure t
  :bind
  ("C-<f2>" . vterm-toggle-cd)
  ("C-=" . vterm-toggle)
  (:map vterm-mode-map
	("M-q" . vterm-toggle)
	([(control return)] . vterm-toggle-insert-cd)
	("s-n" . vterm-toggle-forward)
	("s-p" . vterm-toggle-backward))
  :config
  (setq vterm-toggle-fullscreen-p nil)
  (add-to-list 'display-buffer-alist
			   '((lambda (buffer-or-name _)
				   (let ((buffer (get-buffer buffer-or-name)))
					 (with-current-buffer buffer
					   (or (equal major-mode 'vterm-mode)
						   (string-prefix-p vterm-buffer-name (buffer-name buffer))))))
				 (display-buffer-reuse-window display-buffer-at-bottom)
				 ;;(display-buffer-reuse-window display-buffer-in-direction)
				 ;;display-buffer-in-direction/direction/dedicated is added in emacs27
				 ;;(direction . bottom)
				 ;;(dedicated . t) ;dedicated is supported in emacs27
				 (reusable-frames . visible)
				 (window-height . 0.2)))
  )

(provide 'meta-vterm)
	 
