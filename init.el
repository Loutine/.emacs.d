;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
					;(setq gc-cons-threshold (* 100 1000 1000i))
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
