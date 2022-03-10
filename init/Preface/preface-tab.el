(use-package centaur-tabs
  :ensure t
  :demand
  :init
  (centaur-tabs-mode t)
  (centaur-tabs-headline-match)
  (setq centaur-tabs-style "alternate")
  (setq centaur-tabs-height 45)
  (setq centaur-tabs-gray-out-icons 'buffer)
  (setq centaur-tabs-set-icons t)
  (setq centaur-tabs-set-bar 'left)
  (setq centaur-tabs-set-modified-marker t)
  :bind
  ("C-<prior>" . centaur-tabs-backward)
  ("C-<next>" . centaur-tabs-forward))

(provide 'preface-tab)
