;;; package --- Summary
;;; Commentary:
;;; Code:
(defun my-font-list ()
  (set-face-attribute 'default nil :font "JetBrains Mono")
  ;; Latin
  (set-fontset-font t 'latin "Noto Sans")
  
  ;; East Asia: 你好, 早晨, こんにちは, 안녕하세요
  ;;
  ;; Make sure you use the right font. See
  ;; https://www.google.com/get/noto/help/cjk/.
  ;;
  ;; This font requires "Regular". Other Noto fonts dont.
  ;; ¯\_(ツ)_/¯

  (set-fontset-font t 'han "霞鹜文楷等宽")
  (set-fontset-font t 'kana "霞鹜文楷等宽")
  (set-fontset-font t 'hangul "霞鹜文楷等宽")
  (set-fontset-font t 'cjk-misc "霞鹜文楷等宽")
  
  ;;(set-fontset-font t 'cjk-misc "Noto Sans CJK Mono KR Regular")
  ;;(set-fontset-font t 'hangul "Noto Sans CJK Mono KR Regular")
  ;;(set-fontset-font t 'kana "Noto Sans CJK Mono JP Regular")
  ;;(set-fontset-font t 'han "Noto Sans CJK Mono SC Regular")
  ;; South East Asia: ជំរាបសួរ, ສະບາຍດີ, မင်္ဂလာပါ, สวัสดีครับ
  (set-fontset-font t 'khmer "Noto Sans Khmer")
  (set-fontset-font t 'lao "Noto Sans Lao")
  (set-fontset-font t 'burmese "Noto Sans Myanmar")
  (set-fontset-font t 'thai "Noto Sans Thai")

  ;; Africa: ሠላም
  (set-fontset-font t 'ethiopic "Noto Sans Ethiopic")

  ;; Middle/Near East: שלום, السّلام عليكم
  (set-fontset-font t 'hebrew "Noto Sans Hebrew")
  (set-fontset-font t 'arabic "Noto Sans Arabic")

  ;;  South Asia: નમસ્તે, नमस्ते, ನಮಸ್ಕಾರ, നമസ്കാരം, ଶୁଣିବେ,
  ;;              ආයුබෝවන්, வணக்கம், నమస్కారం, བཀྲ་ཤིས་བདེ་ལེགས༎
  (set-fontset-font t 'gujarati "Noto Sans Gujarati")
  (set-fontset-font t 'devanagari "Noto Sans Devanagari")
  (set-fontset-font t 'kannada "Noto Sans Kannada")
  (set-fontset-font t 'malayalam "Noto Sans Malayalam")
  (set-fontset-font t 'oriya "Noto Sans Oriya")
  (set-fontset-font t 'sinhala "Noto Sans Sinhala")
  (set-fontset-font t 'tamil "Noto Sans Tamil")
  (set-fontset-font t 'telugu "Noto Sans Telugu")
  (set-fontset-font t 'tibetan "Noto Sans Tibetan")
  (set-fontset-font t 'symbol "Blobmoji")
  (set-fontset-font t 'symbol "DejaVuSansMono Nerd Font" nil 'append)
  (set-fontset-font t 'symbol "Symbola" nil 'append)
  
  )

(if window-system
    (my-font-list))
(add-to-list 'after-make-frame-functions
	     (lambda (frame)
	       (select-frame frame)
	       (if (window-system frame)
		   (my-font-list))))

(provide 'preface-font)
;;; preface-font.el ends here
