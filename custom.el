(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-view-program-selection
   '(((output-dvi has-no-display-manager) "dvi2tty")
     ((output-dvi style-pstricks) "dvips and gv") (output-dvi "xdvi")
     (output-pdf "Zathura") (output-html "xdg-open")))
 '(c-default-style
   '((c-mode . "linux") (java-mode . "java") (awk-mode . "awk")
     (other . "gnu")))
 '(comment-style 'extra-line)
 '(company-box-icons-alist 'company-box-icons-icons-in-terminal)
 '(create-lockfiles nil)
 '(custom-raised-buttons t)
 '(delete-old-versions t)
 '(eglot-confirm-server-edits nil nil nil "Customized with use-package eglot")
 '(eldoc-idle-delay 0)
 '(global-auto-revert-mode t)
 '(highlight-indent-guides-bitmap-function 'highlight-indent-guides--bitmap-line)
 '(highlight-indent-guides-method 'bitmap)
 '(initial-buffer-choice nil)
 '(kept-old-versions 1)
 '(kind-icon-default-style
   '(:padding -0.8 :stroke 0 :margin 0 :radius 0 :height 0.6 :scale 0.9))
 '(latex-preview-pane-multifile-mode 'auctex)
 '(lsp-bridge-enable-log t)
 '(marginalia-annotator-registry
   '((command marginalia-annotate-command marginalia-annotate-binding
	      builtin none)
     (embark-keybinding marginalia-annotate-embark-keybinding builtin
			none)
     (customize-group marginalia-annotate-customize-group builtin none)
     (variable marginalia-annotate-variable builtin none)
     (function marginalia-annotate-function builtin none)
     (face marginalia-annotate-face builtin none)
     (color marginalia-annotate-color builtin none)
     (unicode-name marginalia-annotate-char builtin none)
     (minor-mode marginalia-annotate-minor-mode builtin none)
     (symbol marginalia-annotate-symbol builtin none)
     (environment-variable marginalia-annotate-environment-variable
			   builtin none)
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
   '(:foreground default :background default :scale 2.8 :html-foreground
		 "Black" :html-background "Transparent" :html-scale
		 1.0 :matchers ("begin" "$1" "$" "$$" "\\(" "\\[")))
 '(org-hide-emphasis-markers t)
 '(org-noter-always-create-frame nil)
 '(org-noter-auto-save-last-location t)
 '(package-selected-packages
   '(alert all-the-icons auctex meow nerd-icons project
	   rainbow-identifiers transient valign visual-fill-column))
 '(pdf-latex-command "xelatex")
 '(plz-connect-timeout 15)
 '(posframe-mouse-banish t t)
 '(reb-re-syntax 'string)
 '(scroll-bar-mode nil)
 '(sml/mode-width 75)
 '(sml/shorten-modes t)
 '(telega-chat-send-message-on-ret 'if-at-the-end-or-C-u)
 '(tool-bar-mode nil)
 '(truncate-lines nil)
 '(user-full-name "Uhuru")
 '(valign-fancy-bar nil)
 '(warning-suppress-log-types '((comp) (lsp-mode)))
 '(warning-suppress-types
   '(((org-roam)) (use-package) ((org-roam)) ((org-roam)) (use-package)
     (lsp-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
