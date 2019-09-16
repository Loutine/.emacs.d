(defun set-font (english chinese english-size chinese-size)
   (set-face-attribute 'default nil :font
		       (format   "%s:pixelsize=%d"  english english-size))
   (if (display-graphic-p) (dolist (charset '(kana han symbol cjk-misc bopomofo))
     (set-fontset-font (frame-parameter nil 'font) charset
		       (font-spec :family chinese :size chinese-size)))))

(set-font   "Hack Nerd Font Mono" "WenQuanYi Zen Hei Mono" 35 41)

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

(global-company-mode 1)
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 1)
(setq company-selection-wrap-around t)
(company-tng-configure-default)

(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)

(let ((my-path "C:/Program Files/MiKTeX 2.9/miktex/bin/x64"))
     (setenv "PATH" (concat my-path ":" (getenv "PATH"))) 
     (add-to-list 'exec-path my-path))

;;AUCTex configuration
;;set the path of latex
;;(require 'tex-site)
;;set preview mode
(setq org-latex-create-formula-image-program 'dvipng)
;;set auto save
(setq TeX-auto-save t)
(setq TeX-parse-self t)
