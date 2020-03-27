(let
    (
     (gc-cons-threshold most-positive-fixnum)
     (gc-cons-percentage 0.8)
     (file-name-handler-alist nil)
     )
  (require 'benchmark-init)
  (require 'benchmark-init-modes)
  (benchmark-init/activate)
  (add-to-list 'load-path "~/.emacs.d/init/")
  (let ((default-directory "~/.emacs.d/init/"))
    (normal-top-level-add-subdirs-to-load-path))
  (let ((default-directory "~/.emacs.d/orphan/"))
    (normal-top-level-add-subdirs-to-load-path))
    (let ((default-directory "~/.emacs.d/elpa/"))
    (normal-top-level-add-subdirs-to-load-path))
  ;;meta module
  (require 'package_archive)
  (require 'buffer-command)
  (require 'which_key)
  ;;preface module
  (require 'preface)
  (require 'set_theme)
  (require 'rainbow)
  (require 'set_font)
  (require 'set_md)
  ;;autocom module
  (require 'lsp_config)
  (require 'company_config)
  (require 'ivy_config)
  (require 'paredit_config)
  ;;lang module
  (require 'python-la)
  (require 'racket-la)
  (require 'haskell-la)
  (require 'c_cpp-la)
  (require 'coq-la)
  ;;org and mutimedia
  (use-package set_org)
  (require 'set_md)
  (require 'adoc)
  (require 'youdic)
  (use-package EAF)
  )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#424242" "#EF9A9A" "#C5E1A5" "#FFEE58" "#64B5F6" "#E1BEE7" "#80DEEA" "#E0E0E0"])
 '(backup-by-copying t)
 '(backup-directory-alist '(("." . "~/.em_backup")))
 '(beacon-color "#ed0547ad8099")
 '(custom-safe-themes
   '("c3e6b52caa77cb09c049d3c973798bc64b5c43cc437d449eacf35b3e776bf85c" "5a0eee1070a4fc64268f008a4c7abfda32d912118e080e18c3c865ef864d1bea" default))
 '(delete-old-versions t)
 '(display-line-numbers t)
 '(eaf-find-alternate-file-in-dired t t)
 '(evil-emacs-state-cursor '("#E57373" hbar))
 '(evil-insert-state-cursor '("#E57373" bar))
 '(evil-normal-state-cursor '("#FFEE58" box))
 '(evil-visual-state-cursor '("#C5E1A5" box))
 '(fci-rule-color "#767676")
 '(highlight-indent-guides-auto-enabled nil)
 '(highlight-symbol-colors
   '("#FFEE58" "#C5E1A5" "#80DEEA" "#64B5F6" "#E1BEE7" "#FFCC80"))
 '(highlight-symbol-foreground-color "#E0E0E0")
 '(highlight-tail-colors '(("#ed0547ad8099" . 0) ("#424242" . 100)))
 '(jdee-db-active-breakpoint-face-colors (cons "#0F1019" "#D85F00"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#0F1019" "#79D836"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#0F1019" "#767676"))
 '(kept-new-versions 3)
 '(kept-old-versions 1)
 '(left-fringe-width 8 t)
 '(objed-cursor-color "#D83441")
 '(package-selected-packages
   '(hexo youdao-dictionary use-package sdcv rainbow-mode rainbow-delimiters proof-general posframe ox-twbs org-plus-contrib org-drill org-bullets org-brain ob-rust neotree lsp-ui lsp-treemacs highlight-indent-guides goto-chg go-mode flycheck doom-themes doom-modeline dashboard dap-mode company-lsp company-coq company-box benchmark-init))
 '(pdf-view-midnight-colors (cons "#CEDBE5" "#0D0E16"))
 '(pos-tip-background-color "#3a933a933a93")
 '(pos-tip-foreground-color "#9E9E9E")
 '(rustic-ansi-faces
   ["#0D0E16" "#D83441" "#79D836" "#D8B941" "#3679D8" "#8041D8" "#36D8BD" "#CEDBE5"])
 '(scroll-bar-mode nil)
 '(tabbar-background-color "#357535753575")
 '(tool-bar-mode nil)
 '(tooltip-mode nil)
 '(vc-annotate-background "#0D0E16")
 '(vc-annotate-color-map
   (list
    (cons 20 "#79D836")
    (cons 40 "#98cd39")
    (cons 60 "#b8c33d")
    (cons 80 "#D8B941")
    (cons 100 "#d89b2b")
    (cons 120 "#d87d15")
    (cons 140 "#D85F00")
    (cons 160 "#ba5548")
    (cons 180 "#9d4b90")
    (cons 200 "#8041D8")
    (cons 220 "#9d3ca5")
    (cons 240 "#ba3873")
    (cons 260 "#D83441")
    (cons 280 "#bf444e")
    (cons 300 "#a7555b")
    (cons 320 "#8e6568")
    (cons 340 "#767676")
    (cons 360 "#767676")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
