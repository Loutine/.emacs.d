;;(setq browse-url-browser-function 'browse-url-chromium)
(use-package skewer-mode
  :config
  (add-hook 'js2-mode-hook 'skewer-mode)
  (add-hook 'css-mode-hook 'skewer-css-mode)
  (add-hook 'html-mode-hook 'skewer-html-mode))
(use-package mhtml-mode
  :hook
  (mhtml-mode . flycheck-mode)
  )
(use-package emmet-mode
  :hook
  (mhtml-mode . emmet-mode)
  (html-mode . emmet-mode)
  (css-mode . emmet-mode)
  (js2-mode . emmet-mode)

  (mhtml-mode . electric-pair-local-mode)
  (html-mode . electric-pair-local-mode)
  (css-mode . electric-pair-local-mode)
  (js2-mode . electric-pair-local-mode)
  )

(use-package css-mode
  :config
  (setq css-fontify-colors t))

(defun browser-sync()
  "init browser-sync in current dict,and detact all the files(.css,.html,.js)under the dict,make emacs become a live web develop ide"
  (interactive)
  (async-shell-command "browser-sync start --server --files \"**/*.css, **/*.html,**/*.js\""))


(provide 'lang-web)
