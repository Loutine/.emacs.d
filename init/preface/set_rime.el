(use-package rime
  :demand
  :custom
  (default-input-method "rime")
  (rime-show-candidate 'popup)
  (rime-translate-keybindings
   '("C-f" "C-b" "C-n" "C-p" "C-g" "C-`"))
  :init
  (setq rime-user-data-dir "~/.config/ibus/rime/"))

(provide 'set_rime)
  
