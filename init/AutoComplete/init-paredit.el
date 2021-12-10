;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package paredit
  :init
  (autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
  :hook ((emacs-lisp-mode . enable-paredit-mode)
	 (eval-expression-minibuffer-setup . enable-paredit-mode)
	 (ielm-mode . enable-paredit-mode)
	 (lisp-mode . enable-paredit-mode)
	 (lisp-interaction-mode . enable-paredit-mode)
	 (scheme-mode . enable-paredit-mode)
	 (racket-mode . enable-paredit-mode)))

(provide 'init-paredit)
;;; paredit_config.el ends here
