;;; package --- Summary
;;; Commentary:
;;; Code:
(defun my-font-list (EN-size CN-size Height)
  (set-face-attribute
   'default nil
   :font (font-spec ;:name "-CTDB-FiraCode Nerd Font-bold-normal-normal-*-*-*-*-*-d-0-iso10646-1"
	  :family "Hack Nerd Font";"Cascadia Code"
	  :weight 'normal
          ;:slant 'italic
          :size EN-size))
  (dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font
     (frame-parameter nil 'font)
     charset
     (font-spec :name "-GWIN-FangSong_GB2312-normal-normal-normal-*-*-*-*-*-d-0-iso10646-1"
		:weight 'normal
		:slant 'normal
		:size CN-size)))
  ;; (set-fontset-font t nil "Noto Sans Egyptian Hieroglyphs" nil 'append);; for Egyptian char
  ;; (set-fontset-font t nil "Noto Sans Bamum" nil 'append);; for some special char
  (set-fontset-font t 'unicode "Symbola" nil 'append)
  (set-face-attribute 'mode-line nil :font
		      (format   "%s :size=%d"  "Monaco" Height))
  (set-face-attribute 'mode-line-inactive nil :font
		      (format   "%s :size=%d"  "Monaco" Height)))

(use-package unicode-fonts
  :config
  (unicode-fonts-setup))

(defun font-config ()
  (my-font-list 11.0 14.0 24))

(add-to-list 'after-make-frame-functions
	     (lambda (frame)
	       (select-frame frame)
	       (if (window-system frame)
		   (font-config))))

(if window-system
    (font-config))

(provide 'preface-font)
;;; preface-font.el ends here
