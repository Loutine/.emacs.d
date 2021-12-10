;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package proof-general
  :config
  (setq proof-three-window-mode-policy 'hybrid
	coq-compile-before-require t)
  )

(provide 'lang-coq)
;;; coq-la.el ends here
