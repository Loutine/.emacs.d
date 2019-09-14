
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(defun set-font (english chinese english-size chinese-size)
   (set-face-attribute 'default nil :font
                       (format   "%s:pixelsize=%d"  english english-size))
   (dolist (charset '(kana han symbol cjk-misc bopomofo))
     (set-fontset-font (frame-parameter nil 'font) charset
                       (font-spec :family chinese :size chinese-size))))

(set-font   "Hack" "楷体" 35 41)






(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(custom-enabled-themes (quote (solarized)))
 '(custom-safe-themes
   (quote
    ("1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d91ef4e714f05fff2070da7ca452980999f5361209e679ee988e3c432df24347" "0598c6a29e13e7112cfbc2f523e31927ab7dce56ebb2016b567e1eff6dc1fd4f" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" default)))
 '(package-archives
   (quote
    (("org" . "https://orgmode.org/org/")
     ("marmalade" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/marmalade/")
     ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
     ("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
     ("melpa-stable" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa-stable/"))))
 '(package-selected-packages
   (quote
    (htmlize jedi ox-twbs auctex auto-complete-clang yasnippet auto-complete color-theme-solarized ## helm org-bullets)))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )







;;org-bullets configuration
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))





;;helm configuration
;;ox-twbs
(require 'ox-twbs)




;;solarized configuration
(add-hook 'after-make-frame-functions
          (lambda (frame)
            (let ((mode (if (display-graphic-p frame) 'light 'dark)))
              (set-frame-parameter frame 'background-mode mode)
              (set-terminal-parameter frame 'background-mode mode))
            (enable-theme 'solarized)))
(load-theme 'solarized t)
(set-frame-parameter nil 'background-mode 'light)





;;org-babel-function
(org-babel-do-load-languages
 'org-babel-load-languages '((C . t)
			     (java . t)
			     (python . t)
			     (dot . t)))





;;org-hook
(add-hook 'org-mode-hook
	  (lambda()
	    (setq truncate-lines nil)))

;;-------------------------------------------------------------
;;yasnippet
;;-------------------------------------------------------------
(add-to-list 'load-path
"~/.emacs.d/elpa/yasnippet-20190724.1204")
(require 'yasnippet)
(yas/global-mode 1)
;;auto complete
(require 'auto-complete)
(require 'auto-complete-config)
(require 'auto-complete-clang)
;; 设置不自动启动
(setq ac-auto-start nil)  
;; 设置响应时间 0.5
(setq ac-quick-help-delay 0.1)  
;;(ac-set-trigger-key "TAB-a")  
;;(define-key ac-mode-map  [(control tab)] 'auto-complete)  
;; 提示快捷键为 M-/
(define-key ac-mode-map  (kbd "TAB") 'auto-complete) 
(defun my-ac-config ()
  (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))
  (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
  (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
  (add-hook 'css-mode-hook 'ac-css-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (global-auto-complete-mode t))  
(defun my-ac-cc-mode-setup ()  
  (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))  
(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)

(setq ac-clang-flags
      (mapcar (lambda (item)(concat "-I" item))
              (split-string
               "
 C:/msys64/mingw64/include/c++/9.2.0
 C:/msys64/mingw64/include/c++/9.2.0/x86_64-w64-mingw32
 C:/msys64/mingw64/include/c++/9.2.0/backward
 C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/9.2.0/include
 C:/msys64/mingw64/include
 C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/9.2.0/include-fixed
 C:/msys64/mingw64/x86_64-w64-mingw32/include
"
               )))

;; ac-source-gtags  
(my-ac-config)  
(ac-config-default)
;; 结束




;;jedi
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)




;;AUCTex configuration
;;set the path of latex
(require 'tex-site)
(let ((my-path "C:/Program Files/MiKTeX 2.9/miktex/bin/x64"))
     (setenv "PATH" (concat my-path ":" (getenv "PATH"))) 
     (add-to-list 'exec-path my-path))
;;set preview mode
(setq org-latex-create-formula-image-program 'dvipng)
;;set auto save
(setq TeX-auto-save t)
(setq TeX-parse-self t)
