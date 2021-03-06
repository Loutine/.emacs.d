(defun telega-persp ()
  (interactive)
  (persp-switch "telega")
  (telega)
  )
(use-package telega
  :ensure t
  :bind
  ("C-c c" . telega-persp)
  :config
  (setq telega-proxies
	(list
	 '(:server "127.0.0.1" :port 1089 :enable t
                   :type (:@type "proxyTypeSocks5"
				 :username "Uhuru" :password "Loutine@113_"))))
  :init
  (add-hook 'telega-load-hook
	    (lambda ()
	      (define-key global-map (kbd "C-c t") telega-prefix-map)
	      ))
  (add-hook 'telega-load-hook 'telega-mode-line-mode)
  (add-hook 'telega-load-hook 'telega-notifications-mode)

  ;;set special char
  (set-fontset-font "fontset-default" ?⮪ (font-spec :family "Symbola" :size 20))
  )
(provide 'telega_conf)
