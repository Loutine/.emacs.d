(setq gc-cons-threshold most-positive-fixnum)

(let ((default-directory "~/.emacs.d/init/"))
  (normal-top-level-add-subdirs-to-load-path))
(let ((default-directory "~/.emacs.d/orphan/"))
  (normal-top-level-add-subdirs-to-load-path))
  ;;(require 'auto-save)
  ;;(require 'cnfonts)
  ;;(cnfonts-enable)

(require 'benchmark-init-modes)
(require 'benchmark-init)
  ;;meta module

(require 'use-package)
(require 'package_archive)
(require 'buffer-command)
(require 'which_key)
(require 'magit_conf)
(require 'treemacs_conf)
(require 'vterm_conf)
  ;;preface and im module

(require 'preface)
(require 'set_theme)
(require 'set_font)
  ;; (add-hook 'after-make-frame-functions
  ;; 	    '(lambda (frame)
  ;; 	       (switch-to-buffer "*dashboard*")
  ;; 	       (goto-char (point-min))
  ;; 	       (redisplay)))

(add-hook 'after-make-frame-functions
	  (lambda (frame)
	    (load "~/.emacs.d/init/preface/set_font.el")))
(require 'set_rime)
(require 'set_rainbow)  
  ;;autocom module

(require 'lsp_config)
(require 'dap_config)
(require 'company_config)
(require 'ivy_config)
(require 'paredit_config)

  ;;lang module

(require 'julia-la)
(require 'python-la)
(require 'rust_la)
(require 'racket-la)
  ;;(require 'OCaml-la)

(require 'haskell-la)
(require 'c_cpp-la)
(require 'coq-la)
(require 'web-la)

  ;;org and mutimedia

(require 'roam)
(require 'set_org)
(require 'set_md)
(require 'adoc)
(require 'sdcvdic)
(require 'latex-preview-pane)
(require 'EAF)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-by-copying t)
 '(create-lockfiles nil)
 '(default-input-method "rime")
 '(delete-old-versions t)
 '(ein:output-area-inlined-images t)
 '(eldoc-idle-delay 0)
 '(fringe-mode 16 nil (fringe))
 '(haskell-stylish-on-save t)
 '(highlight-indent-guides-bitmap-function 'highlight-indent-guides--bitmap-line)
 '(highlight-indent-guides-responsive 'top)
 '(kept-old-versions 1)
 '(max-mini-window-height 0.7)
 '(org-agenda-files
   '("~/Dropbox/Agenda/Agenda.org" "~/Dropbox/Agenda/routine.org"))
 '(org-format-latex-options
   '(:foreground default :background default :scale 4.0 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
		 ("begin" "$1" "$" "$$" "\\(" "\\[")))
 '(package-selected-packages
   '(rust-mode zmq youdao-dictionary which-key web-server web-mode vterm-toggle use-package treemacs-projectile tree-mode tabbar-ruler sudo-edit rustic realgud rainbow-mode rainbow-identifiers rainbow-delimiters racket-mode quickrun python-mode python-environment pyenv-mode-auto proof-general phi-search persist paredit ox-twbs org-roam-server org-ql org-present org-bullets multiple-cursors lsp-ui lsp-python-ms lsp-ivy lsp-haskell leetcode latex-preview-pane kubernetes julia-mode impatient-mode highlight-numbers highlight-indent-guides goto-chg ess epresent epc elpy ein edit-indirect doom-themes doom-modeline dashboard dap-mode dante counsel-projectile company-web company-org-roam company-lsp company-coq company-box command-log-mode color-theme-sanityinc-solarized color-identifiers-mode cnfonts ccls benchmark-init avk-emacs-themes auto-complete auctex apropospriate-theme adoc-mode))
 '(rime-show-candidate 'posframe)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; ## added by OPAM user-setup for emacs / base ## 56ab50dc8996d2bb95e7856a6eddb17b ## you can edit, but keep this line
