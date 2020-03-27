(use-package which-key
  :demand
  :ensure t
  :bind ("C-x c" . which-key-show-major-mode)
  :config
;; (setq which-key-show-early-on-C-h t
  ;;	which-key-idle-delay 10000
  ;;	which-key-idle-secondary-delay 0.05
  ;;	which-key-popup-type 'minibuffer)     
  (which-key-mode))
(provide 'which_key)
