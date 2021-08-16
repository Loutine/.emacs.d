(let ((gc-cons-threshold most-positive-fixnum)
      (file-name-handler-alist nil))
  (when (daemonp)
    (require 'exec-path-from-shell))
  (exec-path-from-shell-initialize)
  (setq read-process-output-max (* 2048 2048)
	comp-deferred-compilation t)
  (let ((default-directory "~/.emacs.d/init/"))
    (normal-top-level-add-subdirs-to-load-path))
  (let ((default-directory "~/.emacs.d/orphan/"))
    (normal-top-level-add-subdirs-to-load-path))
  (let ((default-directory "~/.local/share/"))
    (normal-top-level-add-subdirs-to-load-path))
  (setq custom--inhibit-theme-enable nil)
  ;;(require 'auto-save)
  ;;(require 'cnfonts)
  ;;(cnfonts-enable)
  (load-file "~/.emacs.d/Loutine-splash/Loutine-splash.el")
  ;; (require 'nano-splash)
  ;; (nano-splash)
  (require 'all-the-icons)
  (require 'ligature_conf)
  ;;(require 'benchmark-init-modes)
  ;;(require 'benchmark-init)
  ;;meta module
  (require 'straight_boot)
  (require 'package_archive)
  (require 'buffer-command)
  (require 'which_key)
  (require 'magit_conf)
  (require 'set_theme)
  (require 'treemacs_conf)
  (require 'vterm_conf)
  ;;preface and im module

  (require 'preface)
  (require 'set_font)
  (require 'set_rime)
  (require 'set_rainbow)
  ;;autocom module
  (require 'lsp_config)
  ;;(require 'dap_config) must be the worst coding environment i've ever used.
  (require 'company_config)
  (require 'ivy_config)
  (require 'paredit_config)
  (require 'avy_config)

  ;;workspace and projectile
  (require 'projectile-config)
  (require 'perspective-config)
  
  ;;lang module

  (require 'julia-la)
  (require 'python-la)
  (require 'rust_la)
  (require 'racket-la)
  (require 'scala-la)
  (require 'OCaml-la)
  (require 'haskell-la)
  ;(require 'flutter-la)
  (require 'c_cpp-la)
  ;;(require 'rescript_la)
  ;;(cmake-ide-setup)
  (require 'coq-la)
  (require 'web-la)

  ;;org and mutimedia
  (require 'roam)
  (require 'transclusion)
  (require 'set_org)
  (require 'set_md)
  (require 'adoc)
  (require 'dict)
  ;;(require 'EAF)
  (Loutine-splash)
  
  ;;other application
  (require 'telega_conf))
(setq default-frame-alist '((cursor-color . "DeepPink")))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-by-copying t)
 '(company-box-icons-alist 'company-box-icons-icons-in-terminal)
 '(create-lockfiles nil)
 '(custom-raised-buttons t)
 '(default-input-method "rime")
 '(delete-old-versions t)
 '(ein:output-area-inlined-images t)
 '(eldoc-idle-delay 0)
 '(fringe-mode 20 nil (fringe))
 '(global-auto-revert-mode t)
 '(haskell-stylish-on-save t)
 '(highlight-indent-guides-bitmap-function 'highlight-indent-guides--bitmap-line)
 '(highlight-indent-guides-responsive 'top)
 '(initial-buffer-choice nil)
 '(ivy-posframe-border-width 2)
 '(kept-old-versions 1)
 '(max-mini-window-height 0.7)
 '(org-agenda-file (list ("~/agenda/agenda.org")))
 '(org-agenda-files '("~/agenda/agenda.org"))
 '(org-format-latex-options
   '(:foreground default :background default :scale 2.8 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
		 ("begin" "$1" "$" "$$" "\\(" "\\[")))
 '(org-hide-emphasis-markers t)
 '(package-selected-packages
   '(bing-dict ## yas-jit yasnippet-snippets geiser perspective unicode-fonts telega org-pomodoro exwm org-noter-pdftools company-quickhelp company zmq youdao-dictionary which-key web-server web-mode vterm-toggle use-package treemacs-projectile tree-mode tabbar-ruler sudo-edit rustic realgud rainbow-mode rainbow-delimiters racket-mode quickrun python-mode python-environment pyenv-mode-auto proof-general phi-search persist pdf-tools paredit ox-twbs org-roam-server org-ql org-present org-noter org-mind-map org-bullets multiple-cursors lsp-ui lsp-python-ms lsp-ivy levenshtein leetcode lcr kubernetes keyfreq julia-mode htmlize highlight-numbers highlight-indent-guides haskell-mode goto-chg flycheck exec-path-from-shell epresent epc elpy ein edit-indirect doom-themes doom-modeline dashboard dap-mode counsel-projectile company-web company-org-roam company-lsp company-coq company-box command-log-mode color-identifiers-mode cnfonts cmake-mode cask caml benchmark-init auctex adoc-mode))
 '(posframe-mouse-banish t)
 '(reb-re-syntax 'string)
 '(rime-show-candidate 'posframe)
 '(scroll-bar-mode nil)
 '(tool-bar-mode t)
 '(truncate-lines nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fringe ((t (:width extra-expanded :foreground "#565761" :inherit default))))
 '(ivy-posframe-border ((t (:background "white"))))
 )
