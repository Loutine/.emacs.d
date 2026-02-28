;;; package --- summary
;;; Commentary:
;;; Code:
(use-package rainbow-delimiters
  :ensure t
  :hook
  (prog-mode . rainbow-delimiters-mode)
  )
(use-package highlight-parentheses
  :ensure t
  :config
  (global-highlight-parentheses-mode))
(provide 'preface-parentheses)
;;; preface-parentheses.el ends here
