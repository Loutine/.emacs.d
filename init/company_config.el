;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode 1)
  )
(use-package company-elisp)
(use-package company
  :ensure t
  :init
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

(use-package company-coq
  :ensure t
  :hook (coq-mode . company-coq-mode)
  :config
  (setq company-coq-live-on-the-edge t)
  (with-eval-after-load 'company-coq
  (add-to-list 'company-coq-disabled-features 'coqdoc)))

(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode)
  )

(provide 'company_config)
;;; company_config.el ends here
