(let (
      (gc-cons-threshold most-positive-fixnum)
      (file-name-handler-alist nil)
      )
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
  ;;(require 'auto-save)
  ;;preface and im module
  (require 'preface)
  (require 'set_theme)
  (require 'set_font)
  (require 'set_rime)
  (require 'set_rainbow)  
  ;;autocom module
  (require 'lsp_config)
  ;;(require 'dap_config)
  (require 'company_config)
  (require 'ivy_config)
  (require 'paredit_config)
  ;;lang module
  (require 'python-la)
  (require 'racket-la)
  (require 'haskell-la)
  (require 'c_cpp-la)
  (require 'coq-la)
  (require 'web-la)
  ;;org and mutimedia
  (require 'set_org)
  (require 'set_md)
  (require 'adoc)
  (require 'sdcvdic)
  (require 'EAF))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default-input-method "rime")
 '(ein:output-area-inlined-images t)
 '(org-agenda-files
   '("~/Dropbox/Agenda/Agenda.org" "~/Dropbox/Agenda/routine.org"))
 '(org-format-latex-options
   '(:foreground default :background default :scale 4.0 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
		 ("begin" "$1" "$" "$$" "\\(" "\\[")))
 '(package-selected-packages
   '(use-package leetcode racket-mode sudo-edit youdao-dictionary sdcv rainbow-mode rainbow-delimiters proof-general posframe ox-twbs org-plus-contrib org-drill org-bullets org-brain ob-rust neotree lsp-ui lsp-treemacs highlight-indent-guides goto-chg flycheck doom-themes doom-modeline dashboard company-lsp company-coq company-box benchmark-init))
 '(rime-show-candidate 'popup))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
