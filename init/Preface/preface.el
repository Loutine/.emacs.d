;;; package --- Summary
;;; Commentary:
;;; Code:
;;(add-to-list 'default-frame-alist '(alpha-background . 0.7))
(use-package page-break-lines
  :hook (after-init . global-page-break-lines-mode)
  :config
  (set-fontset-font "fontset-default"
                    page-break-lines-char
                    (font-spec :family "Monacob"
			       :size 17.1))
)

(use-package doom-modeline
  :hook
  (after-init . doom-modeline-mode)
  )

;;for-indent-guides
(use-package highlight-indent-guides
  :hook (prog-mode . highlight-indent-guides-mode)
  )
;;tabs
;;display-line-numbers
(use-package display-line-numbers
  :hook
  (prog-mode . display-line-numbers-mode)
  (org-mode . display-line-numbers-mode))

(use-package fringe-scale
  :straight (fringe-scale :type git :host github :repo "Loutine/emacs-fringe-scale")
  :demand
  :config
  (set-fringe-mode 16)
  (fringe-scale-setup)
  )

(use-package emacs
  :hook (after-init . global-hl-line-mode))
(provide 'preface)
;;; preface.el ends here
