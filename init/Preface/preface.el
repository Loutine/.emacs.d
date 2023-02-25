;;; package --- Summary
;;; Commentary:
;;; Code:
;;(add-to-list 'default-frame-alist '(alpha-background . 0.7))

(use-package smart-mode-line
  :init
  (setq sml/theme 'light)
  (setq sml/no-confirm-load-theme t)
  (column-number-mode t)
  (sml/setup)
  (setq rm-base-text-properties '())
  ;;inactivate the rich minority overwrite minor modes face in mode line
  :config
  (setq sml/name-width 10)
  (setq rm-blacklist
      (format "^ \\(%s\\)$"
              (mapconcat #'identity
                         '("PgLn" "WK" "ElDoc" "h-i-g" "yas" "Abbrev" "citar-org-roam" "tree-sitter")
                         "\\|")))
  )
;;for-indent-guides
(use-package highlight-indent-guides
  :hook (prog-mode . highlight-indent-guides-mode)
  )
;;tabs
;;display-line-numbers
(use-package display-line-numbers
  :elpaca nil
  :init
  (setq display-line-numbers 'relative)
  :hook
  (prog-mode . display-line-numbers-mode)
  (org-mode . display-line-numbers-mode)
  )

(use-package fringe-scale
  :elpaca (fringe-scale :host github :repo "Loutine/emacs-fringe-scale")
  :demand
  :config
  (set-fringe-mode 16)
  (fringe-scale-setup)
  (define-fringe-bitmap 'flymake-double-exclamation-mark
    (vector #b00000000
            #b00000000
            #b00000000
            #b00000000
            #b01100110
            #b01100110
            #b01100110
            #b01100110
            #b01100110
            #b01100110
            #b01100110
            #b01100110
            #b00000000
            #b01100110
            #b00000000
            #b00000000
            #b00000000))
  )
(provide 'preface)
;;; preface.el ends here
