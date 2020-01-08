;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package proof-general
  :ensure t
  :config
  (setq proof-three-window-mode-policy 'hybrid
	coq-compile-before-require t)
  )

(provide 'proof_general)
;;; proof_general.el ends here
