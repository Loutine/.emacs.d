(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-view-program-selection
   '(((output-dvi has-no-display-manager)
      "dvi2tty")
     ((output-dvi style-pstricks)
      "dvips and gv")
     (output-dvi "xdvi")
     (output-pdf "Zathura")
     (output-html "xdg-open")))
 '(backup-by-copying t)
 '(browse-url-browser-function 'browse-url-xdg-open)
 '(company-backends
   '(company-capf company-files company-bbdb company-semantic company-cmake company-capf company-clang
		  (company-dabbrev-code company-gtags company-etags company-keywords company-files)
		  company-oddmuse company-dabbrev))
 '(company-box-icons-alist 'company-box-icons-icons-in-terminal)
 '(create-lockfiles nil)
 '(custom-raised-buttons t)
 '(default-input-method "rime" nil nil "Customized with use-package rime")
 '(delete-old-versions t)
 '(eldoc-idle-delay 0)
 '(fringe-mode 20 nil (fringe))
 '(global-auto-revert-mode t)
 '(highlight-indent-guides-bitmap-function 'highlight-indent-guides--bitmap-line)
 '(highlight-indent-guides-responsive 'top)
 '(initial-buffer-choice nil)
 '(kept-old-versions 1)
 '(latex-preview-pane-multifile-mode 'auctex)
 '(marginalia-annotator-registry
   '((command marginalia-annotate-command marginalia-annotate-binding builtin none)
     (embark-keybinding marginalia-annotate-embark-keybinding builtin none)
     (customize-group marginalia-annotate-customize-group builtin none)
     (variable marginalia-annotate-variable builtin none)
     (function marginalia-annotate-function builtin none)
     (face marginalia-annotate-face builtin none)
     (color marginalia-annotate-color builtin none)
     (unicode-name marginalia-annotate-char builtin none)
     (minor-mode marginalia-annotate-minor-mode builtin none)
     (symbol marginalia-annotate-symbol builtin none)
     (environment-variable marginalia-annotate-environment-variable builtin none)
     (input-method marginalia-annotate-input-method builtin none)
     (coding-system marginalia-annotate-coding-system builtin none)
     (charset marginalia-annotate-charset builtin none)
     (package marginalia-annotate-package builtin none)
     (imenu marginalia-annotate-imenu builtin none)
     (bookmark marginalia-annotate-bookmark builtin none)
     (file marginalia-annotate-file builtin none)
     (project-file marginalia-annotate-project-file builtin none)
     (buffer marginalia-annotate-buffer builtin none)
     (library marginalia-annotate-library builtin none)
     (tab marginalia-annotate-tab builtin none)
     (multi-category marginalia-annotate-multi-category builtin none)))
 '(max-mini-window-height 0.7)
 '(menu-bar-mode nil)
 '(org-agenda-file (list ("~/agenda/agenda.org")))
 '(org-agenda-files nil)
 '(org-format-latex-options
   '(:foreground default :background default :scale 2.8 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
		 ("begin" "$1" "$" "$$" "\\(" "\\[")))
 '(org-hide-emphasis-markers t)
 '(package-selected-packages
   '(bing-dict ## yas-jit yasnippet-snippets geiser perspective unicode-fonts telega org-pomodoro exwm org-noter-pdftools company-quickhelp company zmq youdao-dictionary which-key web-server web-mode vterm-toggle use-package treemacs-projectile tree-mode tabbar-ruler sudo-edit rustic realgud rainbow-mode rainbow-delimiters racket-mode quickrun python-mode python-environment pyenv-mode-auto proof-general phi-search persist pdf-tools paredit ox-twbs org-roam-server org-ql org-present org-noter org-mind-map org-bullets multiple-cursors lsp-ui lsp-python-ms lsp-ivy levenshtein leetcode lcr kubernetes keyfreq julia-mode htmlize highlight-numbers highlight-indent-guides haskell-mode goto-chg flycheck exec-path-from-shell epresent epc elpy ein edit-indirect doom-themes doom-modeline dashboard dap-mode counsel-projectile company-web company-org-roam company-lsp company-coq company-box command-log-mode color-identifiers-mode cnfonts cmake-mode cask caml benchmark-init auctex adoc-mode))
 '(pdf-latex-command "xelatex")
 '(posframe-mouse-banish t t)
 '(reb-re-syntax 'string)
 '(rime-show-candidate 'posframe)
 '(scroll-bar-mode nil)
 '(tool-bar-mode t)
 '(truncate-lines nil)
 '(warning-suppress-log-types '((comp) (lsp-mode)))
 '(warning-suppress-types '((lsp-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
