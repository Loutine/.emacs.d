(use-package epc :ensure t)
(use-package ctable :ensure t)
(use-package deferred :ensure t)
(use-package s :ensure t)

(use-package eaf
  :demand
  :load-path "/home/loutine/.emacs.d/orphan/emacs-application-framework/"
  ;; :init
  ;; (use-package epc :defer t :ensure t)
  ;; (use-package ctable :defer t :ensure t)
  ;; (use-package deferred :defer t :ensure t)
  ;; (use-package s :defer t :ensure t)
  :config
  (eaf-setq eaf-pdf-dark-mode "false")
  (eaf-setq eaf-browser-enable-adblocker "true")
  (eaf-bind-key scroll_up "C-n" eaf-pdf-viewer-keybinding)
  (eaf-bind-key scroll_down "C-p" eaf-pdf-viewer-keybinding)
  (eaf-bind-key take_photo "p" eaf-camera-keybinding)
  (eaf-bind-key nil "M-q" eaf-browser-keybinding)
  (setq eaf-proxy-type "http")
  (setq eaf-proxy-host "127.0.0.1")
  (setq eaf-proxy-port "8889")
  :custom
  (eaf-browser-continue-where-left-off t))
  
(provide 'EAF)
