(add-to-list 'elpaca-ignored-dependencies 'compat)
(add-to-list 'elpaca-ignored-dependencies 'cond-let)
(add-to-list 'elpaca-ignored-dependencies 'transient)

(use-package telega
  :ensure nil
  :init
  (add-hook 'telega-load-hook
	    (lambda ()
	      (define-key global-map (kbd "C-c t") telega-prefix-map)
	      )
	    'telega-msg-ignore-predicates #'telega-msg-from-blocked-sender-p)
  (add-hook 'telega-load-hook 'telega-mode-line-mode)
  (add-hook 'telega-load-hook 'telega-appindicator-mode)
  (setq telega-filter-button-width 0.3
	telega-filter-custom-one-liners nil
	telega-use-images t
	telega-emoji-use-images nil
	telega-completing-read-function completing-read-function
	telega-chat-show-deleted-messages-for '(return t)
	))

(provide 'app-telega)
