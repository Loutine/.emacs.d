(defun set-font (english chinese english-size chinese-size)
   (set-face-attribute 'default nil :font
		       (format   "%s:pixelsize=%d"  english english-size))
   (dolist (charset '(kana han symbol cjk-misc bopomofo))
     (set-fontset-font (frame-parameter nil 'font) charset
		       (font-spec :family chinese :size chinese-size))))

(set-font   "Hack" "楷体" 35 41)

(add-hook 'after-make-frame-functions
	  (lambda (frame)
	    (let ((mode (if (display-graphic-p frame) 'light 'dark)))
	      (set-frame-parameter frame 'background-mode mode)
	      (set-terminal-parameter frame 'background-mode mode))
	    (enable-theme 'solarized)))
(load-theme 'solarized t)
(set-frame-parameter nil 'background-mode 'light)

(add-hook 'org-mode-hook
	  (lambda()
	    (setq truncate-lines nil)))

(org-babel-do-load-languages
 'org-babel-load-languages '((C . t)
			     (java . t)
			     (python . t)
			     (dot . t)))

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(require 'ox-twbs)

(require 'yasnippet)
(yas/global-mode 1)

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

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

(let ((my-path "C:/Program Files/MiKTeX 2.9/miktex/bin/x64"))
     (setenv "PATH" (concat my-path ":" (getenv "PATH"))) 
     (add-to-list 'exec-path my-path))

;;AUCTex configuration
;;set the path of latex
(require 'tex-site)
;;set preview mode
(setq org-latex-create-formula-image-program 'dvipng)
;;set auto save
(setq TeX-auto-save t)
(setq TeX-parse-self t)
