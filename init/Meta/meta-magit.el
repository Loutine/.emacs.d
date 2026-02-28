(use-package transient
  :ensure nil)
;; magit need the latest transient
(use-package magit
  :ensure t
  ;; installed by nix
  :init
  (setq magit-auto-revert-mode t
	magit-slow-confirm t
	magit-clone-always-transient t))
(provide 'meta-magit)
