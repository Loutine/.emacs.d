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
	dashboard-startup-banner (expand-file-name "~/blackhole_image/ue-light.png")
	dashboard-banner-logo-title "Anti-Bone-Chick"
	dashboard-set-navigator t))

(use-package doom-modeline
  ;:disabled nil
  :hook (after-init . doom-modeline-mode)
;;:init
;;(defun my-doom-modeline--font-height ()
;;"Calculate the actual char height of the mode-line."
;;(+ (frame-char-height) 2))
;;(advice-add #'doom-modeline--font-height :override #'my-doom-modeline--font-height)
;;(setq doom-modeline-icon nil)
  :config
  (setq doom-modeline-height 28))

(use-package neotree
  :ensure t
  :config
  (setq inhibit-compacting-font-caches t
	neo-theme 'icons))
;;for-indent-guides
(use-package highlight-indent-guides
  :ensure t
  :config
  (add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
  (setq highlight-indent-guides-method 'column)
  )

(provide 'preface)
;;; preface.el ends here
