(use-package avy
  :elpaca t
  :config
  (setq avy-case-fold-search nil)       ;; case sensitive makes selection easier
(bind-key "C-;"    'avy-goto-char-2)  ;; I use this most frequently
(bind-key "C-'"    'avy-goto-line)    ;; Consistent with ivy-avy
(bind-key "M-g c"  'avy-goto-char)
(bind-key "M-g e"  'avy-goto-word-0)  ;; lots of candidates
(bind-key "M-g g"  'avy-goto-line)    ;; digits behave like goto-line
(bind-key "M-g w"  'avy-goto-word-1)  ;; first character of the word
(bind-key "M-g ("  'avy-goto-open-paren)
(bind-key "M-g )"  'avy-goto-close-paren)
(bind-key "M-g P"  'avy-pop-mark)
  )

(provide 'init-avy)
