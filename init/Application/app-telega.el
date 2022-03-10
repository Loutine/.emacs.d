(defun telega-persp ()
  (interactive)
  (persp-switch "telega")
  (telega)
  )
(use-package telega
  :bind
  ("C-c c" . telega-persp)
  :config
  (setq telega-proxies
	(list
	 '(:server "127.0.0.1" :port 8889 :enable t :type (:@type "proxyTypeHttp"))))
  :init
  (add-hook 'telega-load-hook
	    (lambda ()
	      (define-key global-map (kbd "C-c t") telega-prefix-map)
	      ))
  (add-hook 'telega-load-hook 'telega-mode-line-mode)
  (add-hook 'telega-load-hook 'telega-notifications-mode))

(provide 'app-telega)
