(tool-bar-mode 0);;工具栏
(menu-bar-mode 1);;菜单栏
(scroll-bar-mode 0);;滚动栏
;;注意，nil已经被0代替
(global-hl-line-mode 1) ;;当前行高亮
(global-linum-mode 1)
(fringe-mode '(10 . 1))
(setq inhibit-splash-screen t)

(use-package dashboard
  :ensure t
  :init
  (dashboard-setup-startup-hook)
  (setq dashboard-set-heading-icons t
	dashboard-set-file-icons t
	dashboard-items '((recents . 5))
	dashboard-startup-banner 2
	dashboard-banner-logo-title "Anti-Bone-Chick"
	dashboard-set-navigator t))

(use-package doom-modeline
      :ensure t
      :hook (after-init . doom-modeline-mode))

(use-package neotree
  :ensure t
  :config
  (setq inhibit-compacting-font-caches t
	neo-theme 'icons))

(use-package highlight-indent-guides
  :ensure t
  :config
  (add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
  (setq highlight-indent-guides-method 'column)
  )

(provide 'preface)