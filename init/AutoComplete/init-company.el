;;; package --- Summary
;;; Commentary:
;;; Code:
;;
;; (require 'color-identifiers-mode)
;; (add-hook 'after-init-hook 'global-color-identifiers-mode)
(use-package yasnippet
  :hook
  ((prog-mode . yas-minor-mode)
   (org-mode . yas-minor-mode)
   (cc-mode . yas-minor-mode))
  )
;; (use-package yas-jit
;;   :ensure t)
(use-package yasnippet-snippets)
(use-package company
  :bind
  ("M-/" . company-complete)
  :hook
  ((prog-mode . company-mode)
   (eshell-mode . company-mode)
   (org-mode . company-mode))
  :config
  (define-key company-active-map [tab] #'company-complete-common-or-cycle)
  (setq company-idle-delay 0
	company-minimum-prefix-length 1
	company-selection-wrap-around t)
  (push 'company-capf company-backends))
(add-to-list 'load-path "/usr/share/icons-in-terminal/")
(require 'icons-in-terminal)
(use-package company-box
  :hook
  (lsp-mode . company-box-mode)
  (emacs-lisp-mode . company-box-mode)
	)
(use-package company-coq
  :hook (coq-mode . company-coq-mode)
  :config
  (setq company-coq-live-on-the-edge t)
  (with-eval-after-load 'company-coq))
(use-package flycheck)
(provide 'init-company)
;;; company_config.el ends here
