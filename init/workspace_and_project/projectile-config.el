(use-package projectile
  :ensure t
  :bind
  ("C-c p" . projectile-command-map)
  :init
  :config
   (setq projectile-keymap-prefix (kbd "C-c p"))
  ;(setq projectile-completion-system 'ivy)
  )

(use-package counsel-projectile
  :ensure t
  :init
  (counsel-projectile-mode +1))

(provide 'projectile-config)
