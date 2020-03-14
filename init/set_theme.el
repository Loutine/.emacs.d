;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package doom-themes
  :init
; Global settings (defaults)
 (setq doom-themes-enable-bold t ; if nil, bold is universally disabled
       doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-acario-dark t nil)
 ;; Enable flashing mode-line on errors
 (doom-themes-visual-bell-config)
 ;; Enable custom neotree theme (all-the-icons must be installed!)
 (doom-themes-neotree-config)
 ;; or for treemacs users
 (doom-themes-treemacs-config)
 ;; Corrects (and improves) org-mode's native fontification.
 (doom-themes-org-config)
; )
 )
(provide 'set_theme)
;;; set_theme.el ends here
