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
  (ivy-mode 1)
  (add-to-list 'load-path "~/.emacs.d/init/")
  (require 'package_archive)
  (require 'misc)
  (require 'preface)
  (require 'rainbow)
  (require 'set_font)
  (require 'set_theme)
  (require 'proof_general)
  (use-package org_set)
  (require 'lsp_config)
  (require 'company_config)
  (require 'ivy_config)
  (require 'paredit_conf)
  (require 'haskell)
  (require 'youdic)
  )
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(ein youdao-dictionary use-package sdcv rainbow-mode rainbow-delimiters proof-general posframe ox-twbs org-plus-contrib org-drill org-bullets org-brain ob-rust neotree lsp-ui lsp-treemacs highlight-indent-guides goto-chg go-mode flycheck doom-themes doom-modeline dashboard dap-mode company-lsp company-coq company-box benchmark-init)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
