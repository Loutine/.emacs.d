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
 '(connection-local-criteria-alist
   '(((:application tramp :protocol "kubernetes")
      tramp-kubernetes-connection-local-default-profile)
     ((:application eshell) eshell-connection-default-profile)
     ((:application tramp :protocol "flatpak")
      tramp-container-connection-local-default-flatpak-profile
      tramp-flatpak-connection-local-default-profile)
     ((:application tramp)
      tramp-connection-local-default-system-profile
      tramp-connection-local-default-shell-profile)))
 '(connection-local-profile-alist
   '((tramp-flatpak-connection-local-default-profile
      (tramp-remote-path "/app/bin" tramp-default-remote-path "/bin"
			 "/usr/bin" "/sbin" "/usr/sbin"
			 "/usr/local/bin" "/usr/local/sbin"
			 "/local/bin" "/local/freeware/bin"
			 "/local/gnu/bin" "/usr/freeware/bin"
			 "/usr/pkg/bin" "/usr/contrib/bin" "/opt/bin"
			 "/opt/sbin" "/opt/local/bin"))
     (tramp-kubernetes-connection-local-default-profile
      (tramp-config-check . tramp-kubernetes--current-context-data)
      (tramp-extra-expand-args 97
			       (tramp-kubernetes--container
				(car tramp-current-connection))
			       104
			       (tramp-kubernetes--pod
				(car tramp-current-connection))
			       120
			       (tramp-kubernetes--context-namespace
				(car tramp-current-connection))))
     (eshell-connection-default-profile (eshell-path-env-list))
     (tramp-container-connection-local-default-flatpak-profile
      (tramp-remote-path "/app/bin" tramp-default-remote-path "/bin"
			 "/usr/bin" "/sbin" "/usr/sbin"
			 "/usr/local/bin" "/usr/local/sbin"
			 "/local/bin" "/local/freeware/bin"
			 "/local/gnu/bin" "/usr/freeware/bin"
			 "/usr/pkg/bin" "/usr/contrib/bin" "/opt/bin"
			 "/opt/sbin" "/opt/local/bin"))
     (tramp-connection-local-darwin-ps-profile
      (tramp-process-attributes-ps-args "-acxww" "-o"
					"pid,uid,user,gid,comm=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
					"-o" "state=abcde" "-o"
					"ppid,pgid,sess,tty,tpgid,minflt,majflt,time,pri,nice,vsz,rss,etime,pcpu,pmem,args")
      (tramp-process-attributes-ps-format (pid . number)
					  (euid . number)
					  (user . string)
					  (egid . number) (comm . 52)
					  (state . 5) (ppid . number)
					  (pgrp . number)
					  (sess . number)
					  (ttname . string)
					  (tpgid . number)
					  (minflt . number)
					  (majflt . number)
					  (time . tramp-ps-time)
					  (pri . number)
					  (nice . number)
					  (vsize . number)
					  (rss . number)
					  (etime . tramp-ps-time)
					  (pcpu . number)
					  (pmem . number) (args)))
     (tramp-connection-local-busybox-ps-profile
      (tramp-process-attributes-ps-args "-o"
					"pid,user,group,comm=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
					"-o" "stat=abcde" "-o"
					"ppid,pgid,tty,time,nice,etime,args")
      (tramp-process-attributes-ps-format (pid . number)
					  (user . string)
					  (group . string) (comm . 52)
					  (state . 5) (ppid . number)
					  (pgrp . number)
					  (ttname . string)
					  (time . tramp-ps-time)
					  (nice . number)
					  (etime . tramp-ps-time)
					  (args)))
     (tramp-connection-local-bsd-ps-profile
      (tramp-process-attributes-ps-args "-acxww" "-o"
					"pid,euid,user,egid,egroup,comm=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
					"-o"
					"state,ppid,pgid,sid,tty,tpgid,minflt,majflt,time,pri,nice,vsz,rss,etimes,pcpu,pmem,args")
      (tramp-process-attributes-ps-format (pid . number)
					  (euid . number)
					  (user . string)
					  (egid . number)
					  (group . string) (comm . 52)
					  (state . string)
					  (ppid . number)
					  (pgrp . number)
					  (sess . number)
					  (ttname . string)
					  (tpgid . number)
					  (minflt . number)
					  (majflt . number)
					  (time . tramp-ps-time)
					  (pri . number)
					  (nice . number)
					  (vsize . number)
					  (rss . number)
					  (etime . number)
					  (pcpu . number)
					  (pmem . number) (args)))
     (tramp-connection-local-default-shell-profile
      (shell-file-name . "/bin/sh") (shell-command-switch . "-c"))
     (tramp-connection-local-default-system-profile
      (path-separator . ":") (null-device . "/dev/null"))))
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
