
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;(setq gc-cons-threshold (* 100 1000 1000))
(package-initialize)
(let (
      ;; 加载的时候临时增大`gc-cons-threshold'以加速启动速度。
      (gc-cons-threshold most-positive-fixnum)
      (file-name-handler-alist nil)
      )
  (require 'benchmark-init-modes)
  (require 'benchmark-init)
  (benchmark-init/activate)
  

    ;; 下面才写你的其它配置
(require 'org)
(org-babel-load-file
 (expand-file-name "~/.emacs.d/config.org")
 )
)
;(setq gc-cons-threshold (* 2 1000 1000))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(highlight-indent-guides ox-twbs sdcv rainbow-mode rainbow-delimiters quelpa-use-package proof-general posframe org-plus-contrib org-drill org-bullets ob-rust neotree monokai-theme lsp-ui lsp-treemacs go-mode flycheck evil doom-themes doom-modeline dashboard dap-mode company-lsp company-coq company-box benchmark-init)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
