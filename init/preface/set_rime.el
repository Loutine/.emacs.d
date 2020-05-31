(use-package rime
  :demand
  :custom
  (default-input-method "rime")
  (rime-show-candidate 'popup)
  (rime-user-data-dir "~/.config/fcitx/rime")
  (rime-translate-keybindings
   '("C-f" "C-b" "C-n" "C-p" "C-g" "C-`"))
)
(provide 'set_rime)
