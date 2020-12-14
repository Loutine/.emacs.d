;;; package --- Summary
;;; Commentary:
;;; Code:
(require 'package)
(setq package-archives '(("org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
			 ("marmalade" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/marmalade/")
			 ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
			 ("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
			 ("melpa-stable" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa-stable/"))
      use-package-always-defer t
      xterm-query-timeout nil
      xterm-query-redisplay-timeout nil)
(provide 'package_archive)
;;; package_archive.el ends here
