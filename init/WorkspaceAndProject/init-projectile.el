(use-package projectile
  :bind
  ("C-c p" . projectile-command-map)
  :init
  :config
   (setq projectile-keymap-prefix (kbd "C-c p"))
  ;(setq projectile-completion-system 'ivy)
  )

(use-package counsel-projectile
  :init
  (counsel-projectile-mode +1))

(provide 'init-projectile)
