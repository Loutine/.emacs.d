;;; package --- summary
;;; Commentary:
;;; Code:
(use-package rainbow-mode
  :defer t
)

(use-package rainbow-delimiters
  :demand t
  :hook
  (scheme-mode . rainbow-delimiters-mode)
  (emacs-lisp-mode . rainbow-delimiters-mode)
  (racket-mode . rainbow-delimiters-mode))

(provide 'set_rainbow)
;;; rainbow.el ends here
