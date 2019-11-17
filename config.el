(require 'package)
(setq package-archives
  '(("org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
    ("marmalade" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/marmalade/")
    ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
    ("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
    ("melpa-stable" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa-stable/")))

(setq
     backup-by-copying t ; 自动备份
     backup-directory-alist
     '(("." . "~/.em_backup")) ; 自动备份在目录"~/.em_backup"下
     delete-old-versions t ; 自动删除旧的备份文件
     kept-new-versions 3 ; 保留最近的3个备份文件
     kept-old-versions 1 ; 保留最早的1个备份文件
     version-control t) ; 多次备份

(require 'evil)
(evil-mode 1)

(defun set-font (english chinese english-size chinese-size)
   (set-face-attribute 'default nil :font
		       (format   "%s:pixelsize=%d"  english english-size))
   (if (display-graphic-p) (dolist (charset '(kana han symbol cjk-misc bopomofo))
     (set-fontset-font (frame-parameter nil 'font) charset
		       (font-spec :family chinese :size chinese-size)))))

(set-font   "Hack Nerd Font Mono" "STFangsong" 35 42)

(require 'monokai-pro-theme)
(require 'monokai-theme)

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

(require 'ox-twbs)

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

(require 'lsp-mode)
(add-hook 'python-mode-hook #'lsp)
(add-hook 'c-mode-hook #'lsp)
(add-hook 'c++-mode-hook #'lsp)

(global-company-mode 1)
;;(require 'company-auctex)
(require 'company-math)
;;(company-auctex-init)
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 1)
(setq company-selection-wrap-around t)

(defun set-org-src-buffer-name ()
  (interactive)
  (cond
   ((equal major-mode 'c-mode)
    (setq buffer-file-name "temp.c"))

   ))

(add-hook 'org-src-mode-hook 'set-org-src-buffer-name)

(require 'company-lsp)
(push 'company-lsp company-backends)

;(defun my/python-mode-hook ()(add-to-list 'company-backends 'company-jedi))

;(add-hook 'python-mode-hook 'my/python-mode-hook)

(require 'company-box)
(add-hook 'company-mode-hook 'company-box-mode)

(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)

(add-hook 'after-init-hook #'global-flycheck-mode)
(with-eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook 'flycheck-popup-tip-mode))

(require 'rainbow-mode)

(require 'rainbow-delimiters)
(add-hook 'scheme-mode-hook #'rainbow-delimiters-mode)

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

;;AUCTex configuration
;;set the path of latex
;;(require 'tex-site)
;;set preview mode
;;(load "auctex.el" nil t t)
;;(require 'tex)
;;(add-to-list 'company-backends 'company-math-symbols-unicode)
;;(setq org-format-latex-options (plist-put org-format-latex-options :scale 4.0))
;;(setq org-latex-create-formula-image-program 'dvipng)
;;set auto save
;;(setq TeX-auto-save t)
;;(setq TeX-parse-self t)
;;(setq-default Tex-master nil)
