(package-initialize)
(let
    (
     (gc-cons-threshold most-positive-fixnum)
     (gc-cons-percentage 0.8)
     (file-name-handler-alist nil)
     )
  (require 'benchmark-init)
  (require 'benchmark-init-modes)
  (benchmark-init/activate)
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
  (require 'treemacs_conf)
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
  (require 'web-la)
  ;;org and mutimedia
  (use-package set_org
    :demand)
  (require 'set_md)
  (require 'adoc)
  (require 'youdic)
  (require 'EAF)
  )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files '("~/Agenda/routine.org"))
 '(package-selected-packages
   '(centaur-tabs company-web youdao-dictionary use-package sdcv rainbow-mode rainbow-delimiters proof-general posframe ox-twbs org-plus-contrib org-drill org-bullets org-brain ob-rust lsp-ui lsp-treemacs highlight-indent-guides goto-chg go-mode flycheck doom-themes doom-modeline dashboard dap-mode company-lsp company-coq company-box benchmark-init)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
