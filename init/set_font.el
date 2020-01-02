(defun set-font (english chinese english-size chinese-size)
     (set-face-attribute 'default nil :font
			 (format   "%s:pixelsize=%d"  english english-size))
     (if (display-graphic-p) (dolist (charset '(kana han symbol cjk-misc bopomofo))
       (set-fontset-font (frame-parameter nil 'font) charset
			 (font-spec :family chinese :size chinese-size)))))
;;下面的内容需要替换成相关系统的字体，未设置系统检测
(set-font   "Hack Nerd Font Mono" "STFangsong" 30 37)

(provide 'set_font)
