;;; package --- Summary
;;; Commentary:
;;; Code:
(setq inhibit-splash-screen t);;关闭默认欢迎页面
(use-package dashboard
  :ensure t
  :init
  (dashboard-setup-startup-hook)
  (setq dashboard-set-heading-icons t
	dashboard-set-file-icons t
	dashboard-items '((recents . 5))
	dashboard-banner-logo-title "Anti-Bone-Chick"
	dashboard-startup-banner 4
	dashboard-set-navigator t)
  (setq dashboard-items '(
			  (agenda . 5)
			  (recents  . 3)
                          ))
  (setq backup-by-copying 1
	backup-directory-alist '(("." . "~/.em_backup"))
	delete-old-versions 1
	kept-new-versions 3
	kept-old-versions 1
	left-fringe-width 8)
)
(use-package doom-modeline
  ;:disabled nil
  :hook (after-init . doom-modeline-mode)
  :config
  (setq doom-modeline-height 21))

;;for-indent-guides
(use-package highlight-indent-guides
  :ensure t
  :config
  (add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
  (highlight-indent-guides-method 'column))
;;tabs
(use-package centaur-tabs
  :demand
  :ensure t
  :init
  (centaur-tabs-mode t)
  (setq centaur-tabs-set-icons t
	centaur-tabs-style "bar"
	centaur-tabs-set-bar 'left)
  :bind
  ("C-<prior>" . centaur-tabs-backward)
  ("C-<next>" . centaur-tabs-forward))
;;display-line-numbers
(use-package display-line-numbers
  :hook
  (prog-mode . display-line-numbers-mode)
  (org-mode . display-line-numbers-mode))
(scroll-bar-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0) 
(provide 'preface)
;;; preface.el ends here
