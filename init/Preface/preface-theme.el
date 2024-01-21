;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package modus-themes
  :elpaca t
  :config
  (setq modus-themes-custom-auto-reload t)
  (setq modus-themes-completions nil)

  (if (daemonp)
      (add-hook 'after-make-frame-functions
		(lambda (frame)
		  (with-selected-frame frame
		    (load-theme 'modus-operandi-tinted t))))
    (load-theme 'modus-operandi-tinted t))
  )

(use-package doom-themes
  :elpaca t
  ;; :config
  ;;   (require 'doom-themes)
  ;;   (setq doom-themes-enable-bold t
  ;; 	doom-themes-enable-italic t)
  ;;
  )
;; for scroll
(setq scroll-conservatively 101) ; >101 will never recenter


(provide 'preface-theme)
;;; preface-theme.el ends here
