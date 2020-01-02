(use-package yasnippet
  :ensure t
  :hook (after-init . yas-global-mode)
  )

(use-package company
  :ensure t
  :config
  (global-company-mode 1)
  (setq company-idle-delay 0
	company-minimum-prefix-length 1
	company-selection-wrap-around t))

(use-package company-lsp
  :ensure t
  :config
  (push 'company-lsp company-backends))

(use-package company-box
  :ensure t
  :hook (company-mode . company-box-mode))
(add-hook 'coq-mode-hook 'my-inhibit-global-company-box-mode)

(defun my-inhibit-global-company-box-mode ()
  "Counter-act `global-linum-mode'."
  (add-hook 'after-change-major-mode-hook
	    (lambda () (company-box-mode 0))
	    :append :local))

(use-package company-coq
  :ensure t
  :hook (coq-mode . company-coq-mode)
  :config
  (setq company-coq-live-on-the-edge t)
  (with-eval-after-load 'company-coq
  (add-to-list 'company-coq-disabled-features 'coqdoc)))

(use-package flycheck
  :ensure t
  :config
  (global-flycheck-mode)
  )

(provide 'company_config)
