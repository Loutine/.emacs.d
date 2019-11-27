(require 'package)
(require 'use-package)
(setq package-archives
  '(("org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
    ("marmalade" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/marmalade/")
    ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
    ("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
    ("melpa-stable" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa-stable/")))

(defun toggle-frame-split ()
  "If the frame is split vertically, split it horizontally or vice versa.
Assumes that the frame is only split into two."
  (interactive)
  (unless (= (length (window-list)) 2) (error "Can only toggle a frame split in two"))
  (let ((split-vertically-p (window-combined-p)))
    (delete-window) ; closes current window
    (if split-vertically-p
	(split-window-horizontally)
      (split-window-vertically)) ; gives us a split with the other window twice
    (switch-to-buffer nil))) ; restore the original window in this part of the frame

;; I don't use the default binding of 'C-x 5', so use toggle-frame-split instead
(global-set-key (kbd "C-x 9") 'toggle-frame-split)

(defun set-org-src-buffer-name ()
  (interactive)
  (cond
   ((equal major-mode 'c-mode)
    (setq buffer-file-name "temp.c"))
   ((equal major-mode 'c++-mode)
    (setq buffer-file-name "temp.cpp"))
   ((equal major-mode 'python-mode)
    (setq buffer-file-name "temp.py"))))

(add-hook 'org-src-mode-hook 'set-org-src-buffer-name)

(tool-bar-mode 0);;工具栏
(menu-bar-mode 0);;菜单栏
(scroll-bar-mode 0);;滚动栏
;;注意，nil已经被0代替
(display-time-mode 1) ;; 常显
(setq display-time-24hr-format t) ;;格式
(setq display-time-day-and-date t) ;;显示时间、星期、日期
;;当前行高亮
(global-hl-line-mode 1)
;;linum-mode
(global-linum-mode 1)

(setq
     backup-by-copying t ; 自动备份
     backup-directory-alist
     '(("." . "~/.em_backup")) ; 自动备份在目录"~/.em_backup"下
     delete-old-versions t ; 自动删除旧的备份文件
     kept-new-versions 3 ; 保留最近的3个备份文件
     kept-old-versions 1 ; 保留最早的1个备份文件
     version-control t ;多次备份
     create-lockfiles nil) ;#文件

(use-package evil
  :ensure t
  :config (evil-mode 1))

(defun set-font (english chinese english-size chinese-size)
   (set-face-attribute 'default nil :font
		       (format   "%s:pixelsize=%d"  english english-size))
   (if (display-graphic-p) (dolist (charset '(kana han symbol cjk-misc bopomofo))
     (set-fontset-font (frame-parameter nil 'font) charset
		       (font-spec :family chinese :size chinese-size)))))

(set-font   "Hack Nerd Font Mono" "STFangsong" 35 42)

(use-package color-theme-sanityinc-solarized
  :ensure t
  :config
  (load-theme 'sanityinc-solarized-dark t nil))

(custom-theme-set-faces 'user
			`(org-level-1 ((t (:foreground "orange"))))
			`(org-level-2 ((t (:foreground "green"))))
			`(org-level-3 ((t (:foreground "blue"))))
			`(org-level-4 ((t (:foreground "yellow"))))
			`(org-level-5 ((t (:foreground "cyan"))))
			`(org-level-6 ((t (:foreground "green"))))
			`(org-level-7 ((t (:foreground "red"))))
			`(org-level-8 ((t (:foreground "blue")))))

(add-hook 'org-mode-hook
	  (lambda()
	    (setq truncate-lines nil)))

(org-babel-do-load-languages
 'org-babel-load-languages '((C . t)
			     (java . t)
			     (python . t)
			     (dot . t)
			     (ditaa . t)
			     (rust . t)
			     (scheme . t))
 )

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(use-package ox-twbs
  :ensure t)

(require 'org-drill)
(setq org-drill-hide-item-headings-p nil)
(setq org-drill-auto-pronounce t)
(setq org-drill-learn-fraction 0.25)
(setq org-drill-add-random-noise-to-intervals-p t)

(require 'org-tempo)
(tempo-define-template "new-words"
	       '("* " p " :drill:\ntranslate the word\n" "** Chinese\n** example" >)
	       "<n"
	       "Insert a property tempate")

(use-package lsp-mode
  :ensure t
  :hook
  (c-mode . lsp)
  (c++-mode . lsp)
  (python-mode . lsp)
  :commands lsp
  )

(use-package company
  :ensure t
  :init
  (global-company-mode 1)
  (setq company-idle-delay 0
	company-minimum-prefix-length 1
	company-selection-wrap-around t))

(use-package company-lsp
  :ensure t
  :config
  (push 'company-lsp company-backends))

(use-package company
  :ensure t
  :hook (company-mode . company-box-mode))

(add-to-list 'load-path "~/.local/share/icons-in-terminal/")
(add-to-list 'load-path "~/.emacs.d/orphan/")
(require 'icons-in-terminal)

(use-package flycheck
   :ensure t
   :init
   ;(global-flycheck-mode)
   )
; (use-package flycheck-popup-tip
  ; :ensure t
  ; :config
  ; (with-eval-after-load 'flycheck
  ; '(add-hook 'flycheck-mode-hook 'flycheck-popup-tip-mode)))

(use-package rainbow-mode
  :ensure t)

(use-package rainbow-delimiters
  :ensure t
  :hook (scheme-mode . rainbow-delimiters-mode))

(require 'posframe)
(require 'subr-x)
(add-to-list 'load-path "~/.emacs.d/elpa/sdcv/")
(require 'sdcv)
(setq sdcv-say-word-p t)               ;say word after translation

(setq sdcv-dictionary-data-dir "/home/loutine/.stardict/dic") ;setup directory of stardict dictionary

(setq sdcv-dictionary-simple-list    ;setup dictionary list for simple search
      '("朗道英汉字典5.0"
	"懒虫简明汉英词典"))

(setq sdcv-dictionary-complete-list     ;setup dictionary list for complete search
      '(
    "懒虫简明英汉词典"
    "懒虫简明汉英词典"
    "朗道英汉字典5.0"
    "朗道汉英字典5.0"
    "牛津英汉双解美化版"
    ))
