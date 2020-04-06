;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package paredit
  :ensure t
  :init
  (autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
  :hook ((emacs-lisp-mode . enable-paredit-mode)
	 (eval-expression-minibuffer-setup . enable-paredit-mode)
	 (ielm-mode . enable-paredit-mode)
	 (lisp-mode . enable-paredit-mode)
	 (lisp-interaction-mode . enable-paredit-mode)
	 (scheme-mode . enable-paredit-mode)
	 (racket-mode . enable-paredit-mode)))
(use-package elec-pair
  :demand
  :init
  (setq electric-pair-pairs
	'(
	  (?\{ . ?\})  ;; 添加大括号补齐
	  (?\' . ?\')
	  (?\< . ?\>))) ;; 添加单引号补齐
  (add-hook 'web-mode-hook (lambda () (electric-pair-local-mode)))
  )
(provide 'paredit_config)
;;; paredit_config.el ends here
