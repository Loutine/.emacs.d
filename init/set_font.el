;;; package --- Summary
;;; Commentary:
;;; Code:
(defun set-font (english chinese english-size chinese-size)
 (set-face-attribute 'default nil :font
		      (format   "%s:pixelsize=%d"  english english-size))
 (if (display-graphic-p) (dolist (charset '(kana han symbol cjk-misc bopomofo))
			    (set-fontset-font (frame-parameter nil 'font) charset
					      (font-spec :family chinese :size chinese-size)))))
;下面的内容需要替换成相关系统的字体，未设置系统检测
(set-font   "Hack Nerd Font Mono" "WenQuanYi Micro Hei Mono" 35 42)
(set-face-attribute 'mode-line nil :font
		    (format   "%s:pixelsize=%d"  "Hack Nerd Font Mono" 30))
;; 让 cnfonts 随着 Emacs 自动生效。
;; 让 spacemacs mode-line 中的 Unicode 图标正确显示。
(provide 'set_font)
;;; set_font.el ends here
