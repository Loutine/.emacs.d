;;; package --- Summary
;;; Commentary:
;;; Code:
;;tabs
;;display-line-numbers
(use-package display-line-numbers
  :elpaca nil
  :config
  (setq display-line-numbers-type 'relative)
  :hook
  (prog-mode . display-line-numbers-mode)
  (org-mode . display-line-numbers-mode)
  )

;; use wayland, no need to scale fringe now
;; (use-package fringe-scale
;;   :elpaca (fringe-scale :host github :repo "Loutine/emacs-fringe-scale")
;;   :demand
;;   :config
;;   (set-fringe-mode 16)
;;   (fringe-scale-setup)
;;   (define-fringe-bitmap 'flymake-double-exclamation-mark
;;     (vector #b00000000
;;             #b00000000
;;             #b00000000
;;             #b00000000
;;             #b01100110
;;             #b01100110
;;             #b01100110
;;             #b01100110
;;             #b01100110
;;             #b01100110
;;             #b01100110
;;             #b01100110
;;             #b00000000
;;             #b01100110
;;             #b00000000
;;             #b00000000
;;             #b00000000))
;;   )
(provide 'preface)
;;; preface.el ends here
