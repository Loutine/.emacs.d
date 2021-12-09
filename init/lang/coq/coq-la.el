;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package proof-general
  :config
  (setq proof-three-window-mode-policy 'hybrid
	coq-compile-before-require t)
  )

(provide 'coq-la)
;;; coq-la.el ends here
