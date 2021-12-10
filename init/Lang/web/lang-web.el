;;(setq browse-url-browser-function 'browse-url-chromium)
(use-package skewer-mode
  :config
  (add-hook 'js2-mode-hook 'skewer-mode)
  (add-hook 'css-mode-hook 'skewer-css-mode)
  (add-hook 'html-mode-hook 'skewer-html-mode))
(use-package web-mode
  :demand
  :ensure t
  :mode "\\.[px]?html?\\'"
  :mode "\\.\\(?:tpl\\|blade\\)\\(?:\\.php\\)?\\'"
  :mode "\\.erb\\'"
  :mode "\\.eex\\'"
  :mode "\\.jsp\\'"
  :mode "\\.as[cp]x\\'"
  :mode "\\.hbs\\'"
  :mode "\\.mustache\\'"
  :mode "\\.svelte\\'"
  :mode "\\.vue\\'"
  :mode "\\.twig\\'"
  :mode "\\.jinja\\'"
  :mode "wp-content/themes/.+/.+\\.php\\'"
  :mode "templates/.+\\.php\\'"
  :mode "\\.tsx\\'"
  :mode "\\.swig\\'"
  :config
  (setq web-mode-markup-indent-offset 2
	web-mode-css-indent-offset 2
	web-mode-code-indent-offset 2
	web-mode-enable-current-element-highlight t
	web-mode-enable-css-colorization nil))
(use-package company-web
  :config
  (add-to-list 'company-backends  'company-web-html)) 
(use-package css-mode
  :config
  (setq css-fontify-colors nil))
(defun browser-sync()
  "init browser-sync in current dict,and detact all the files(.css,.html,.js)under the dict,make emacs become a live web develop ide"
  (interactive)
  (async-shell-command "browser-sync start --server --files \"**/*.css, **/*.html,**/*.js\""))

;;————————————————————————————————————————————————————————————————————————————————————————————
(defcustom browse-url-firefox-dev-program
  (let ((candidates '("icecat" "iceweasel" "firefox-developer-edition")))
    (while (and candidates (not (executable-find (car candidates))))
      (setq candidates (cdr candidates)))
    (or (car candidates) "firefox-developer-edition"))
  "The name by which to invoke Firefox or a variant of it."
  :type 'string)

(defun browse-url-firefox-dev (url &optional new-window)
  (interactive (browse-url-interactive-arg "URL: "))
  (setq url (browse-url-encode-url url))
  (let* ((process-environment (browse-url-process-environment)))
    (apply 'start-process
           (concat "firefox-developer-edition " url) nil
           browse-url-firefox-dev-program
           (append
            browse-url-firefox-arguments
            (if (browse-url-maybe-new-window new-window)
		(if browse-url-firefox-new-window-is-tab
		    '("-new-tab")
		  '("-new-window")))
            (list url)))))

(provide 'lang-web)
