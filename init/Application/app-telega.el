(use-package telega
  :elpaca t 
  :after (org)
  :init
  (add-hook 'telega-load-hook
	    (lambda ()
	      (define-key global-map (kbd "C-c t") telega-prefix-map)
	      )
	    'telega-msg-ignore-predicates #'telega-msg-from-blocked-sender-p)
  (add-hook 'telega-load-hook 'telega-mode-line-mode)
  (add-hook 'telega-load-hook 'telega-appindicator-mode)
  (setq telega-proxies (list
			'(:server "127.0.0.1" :port 7890 :enable t :type (:@type "proxyTypeHttp"))
			'(:server "127.0.0.1" :port 7890 :enable t :type (:@type "proxyTypeSocks5"))
			)
	telega-server-libs-prefix "/usr"
	telega-filter-button-width 0.3
	telega-filter-custom-one-liners nil
	telega-use-images t
	telega-emoji-use-images nil
	telega-completing-read-function completing-read-function
	telega-chat-show-deleted-messages-for '(return t)
	)
  )

(provide 'app-telega)
