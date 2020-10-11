;;; package --- Summary
;;; Commentary:
;;; Code:
;;
(require 'color-identifiers-mode)
(add-hook 'after-init-hook 'global-color-identifiers-mode)
(use-package yasnippet
  :ensure t
  :hook
  ((prog-mode . yas-minor-mode)
   (org-mode . yas-minor-mode))
  )
(use-package company
  :ensure t
  :bind
  ("M-/" . company-complete)
  :hook
  ((prog-mode . company-mode)
   (eshell-mode . company-mode))
  :config
  (define-key company-active-map [tab] #'company-complete-common-or-cycle)
  (setq company-idle-delay 0
	company-minimum-prefix-length 1
	company-selection-wrap-around t)
  (push 'company-capf company-backends))
(use-package company-lsp
  :ensure t
  :config
  (push 'company-lsp company-backends))

(use-package company-box
  :ensure t
  :hook
  (lsp-mode . company-box-mode)
  (emacs-lisp-mode . company-box-mode))
(use-package company-coq
  :ensure t
  :hook (coq-mode . company-coq-mode)
  :config
  (setq company-coq-live-on-the-edge t)
  (with-eval-after-load 'company-coq))
(use-package flycheck
 :ensure t)

(provide 'company_config)
;;; company_config.el ends here
