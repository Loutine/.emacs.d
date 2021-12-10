;;; package --- summary
;;; Commentary:
;;; Code:
(use-package font-lock+)
(use-package rainbow-delimiters
  :demand t
  :hook
  (scheme-mode . rainbow-delimiters-mode)
  (emacs-lisp-mode . rainbow-delimiters-mode)
  (racket-mode . rainbow-delimiters-mode))

(provide 'preface-rainbow)
;;; rainbow.el ends here
