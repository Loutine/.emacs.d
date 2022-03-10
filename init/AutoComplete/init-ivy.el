;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package ivy
  :init
  (ivy-mode t)
  (setq ivy-use-virtual-buffers t
	enable-recursive-minibuffers t)
)


(use-package counsel
  :bind
  ("M-x" . counsel-M-x)
  ("C-x C-f" . counsel-find-file)
  ("C-x C-j" . counsel-imenu)
  ("C-h C-b" . counsel-descbinds)
  ("C-h f" . counsel-describe-function)
  ("C-h v" . counsel-describe-variable)
  ("C-h a" . counsel-apropos)
  ("M-y" . counsel-yank-pop) 
  ("C-c l t" . counsel-load-theme)
  ("C-h S" . counsel-info-lookup-symbol)
  ("C-c m r" . counsel-mark-ring)
  ("C-c f l" . counsel-find-library)
  ("C-x r b" . counsel-bookmark)
  ("C-x b" . counsel-switch-buffer)
  :demand t)


(use-package swiper
  :bind
  ("C-c s w" . swiper)
  :demand t
  )
(use-package all-the-icons-ivy-rich
  :init (all-the-icons-ivy-rich-mode 1))

(use-package ivy-rich
  :init (ivy-rich-mode 1))


(provide 'init-ivy)
;;; ivy_config.el ends here
