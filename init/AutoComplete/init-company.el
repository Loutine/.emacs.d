;;; package --- Summary
;;; Commentary:
;;; Code:
;;
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

(use-package company-coq
  :hook (coq-mode . company-coq-mode)
  :config
  (setq company-coq-live-on-the-edge t)
  (with-eval-after-load 'company-coq))
(provide 'init-company)
;;; company_config.el ends here
