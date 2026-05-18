;;; package --- Summary
;;; Commentary:
;;; Code:
;;
(use-package company
  :ensure t
  :bind
  ("M-/" . company-complete)
  :config
  (setq company-idle-delay 0
		company-minimum-prefix-length 1
		company-selection-wrap-around t)
  :init
  (global-company-mode))

(provide 'init-company)
;;; company_config.el ends here
