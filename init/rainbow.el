;;; package --- summary
;;; Commentary:
;;; Code:
(use-package rainbow-mode
  :defer t
  :ensure t)

(use-package rainbow-delimiters
  :ensure t
  :demand t
  :hook
  (scheme-mode . rainbow-delimiters-mode)
  (emacs-lisp-mode . rainbow-delimiters-mode)
  (racket-mode . rainbow-delimiters-mode))

(provide 'rainbow)
;;; rainbow.el ends here
