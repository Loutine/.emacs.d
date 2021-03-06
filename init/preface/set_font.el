;;; package --- Summary
;;; Commentary:
;;; Code:
(defun my-font-list (EN-size CN-size)
  (set-face-attribute
   'default nil
   :font (font-spec :name "-APPL-Monaco-normal-normal-normal-*-*-*-*-*-*-0-iso10646-1"
                    :weight 'normal
                    :slant 'normal
                    :size EN-size))
  (dolist (charset '(kana han cjk-misc bopomofo))
    (set-fontset-font
     (frame-parameter nil 'font)
     charset
     (font-spec :name "-GWIN-仿宋_GB2312-normal-normal-normal-*-*-*-*-*-d-0-iso10646-1"
		:weight 'normal
		:slant 'normal
		:size CN-size)))
  (set-fontset-font t nil "Noto Sans Egyptian Hieroglyphs" nil 'append) ;;for Egyptian char
  (set-fontset-font t nil "Noto Sans Bamum" nil 'append);; for some special char
  (set-face-attribute 'mode-line nil :font
		      (format   "%s :size=%d"  "MonacoB" 25))
  (set-face-attribute 'mode-line-inactive nil :font
		      (format   "%s :size=%d"  "MonacoB" 25)))

(use-package unicode-fonts
  :ensure t
  :config
  (unicode-fonts-setup))

(add-to-list 'after-make-frame-functions
	     (lambda (frame)
	       (select-frame frame)
	       (my-font-list 11.0 11.0)))

(if window-system
    (my-font-list 11.0 11.0))
(provide 'set_font)
;;; set_font.el ends here
