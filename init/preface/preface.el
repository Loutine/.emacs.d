;;; package --- Summary
;;; Commentary:
;;; Code:
(setq inhibit-splash-screen t);;关闭默认欢迎页面
(use-package dashboard
  :ensure t
  :init
  ;; (if (display-graphic-p))
  (dashboard-setup-startup-hook)
  (setq ;dashboard-set-heading-icons t
   dashboard-set-file-icons t
   dashboard-items '((recents . 5)
		     (bookmarks . 3))
   dashboard-banner-logo-title "Anti-Bone-Chick"
   dashboard-startup-banner 4
   initial-buffer-choice (lambda () (get-buffer "*dashboard*"))
					;dashboard-set-navigator t
   ))
(use-package doom-modeline
  ;:disabled nil
  :hook
  (after-init . doom-modeline-mode)
  :init
  (defvar doom-modeline-icon t)
  :config
  (setq doom-modeline-height 22))

;;for-indent-guides
(use-package highlight-indent-guides
  :ensure t
  :hook (prog-mode . highlight-indent-guides-mode)
  :config
  (setq highlight-indent-guides-method 'bitmap)
  )
;;tabs
;;display-line-numbers
(use-package display-line-numbers
  :hook
  (prog-mode . display-line-numbers-mode)
  (org-mode . display-line-numbers-mode))
(provide 'preface)
;;; preface.el ends here
