;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package doom-themes
  :init
; Global settings (defaults)
  (setq doom-themes-enable-bold t ; if nil, bold is universally disabled
	doom-themes-enable-italic t) ; if nil, italics is universally disabled
  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; Enable custom neotree theme (all-the-icons must be installed!)
  ;; or for treemacs users
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-treemacs-config)
  (doom-themes-org-config)
  (load-theme 'doom-monokai-classic t nil)
					; )
  )
(provide 'set_theme)
;;; set_theme.el ends here
