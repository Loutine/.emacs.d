;;; package --- Summary
;;; Commentary:
;;; Code:
(add-to-list 'default-frame-alist '(alpha-background . 0.7))
(use-package page-break-lines
  :demand
  :config
  (set-fontset-font "fontset-default"
                    page-break-lines-char
                    (font-spec :family "Monacob"
			       :size 17.1))
)

(use-package doom-modeline
  :hook
  (after-init . doom-modeline-mode)
  :init
  (defvar doom-modeline-icon t)
  )

;; ;;for-indent-guides
;; (use-package highlight-indent-guides
;;   :hook (prog-mode . highlight-indent-guides-mode)
;;   :config
;;   (setq highlight-indent-guides-method 'fill)
;;   )
;;tabs
;;display-line-numbers
(use-package display-line-numbers
  :hook
  (prog-mode . display-line-numbers-mode)
  (org-mode . display-line-numbers-mode))

(provide 'preface)
;;; preface.el ends here
