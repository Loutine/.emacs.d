(use-package rime
  :after (no-littering) ;value of the user-data-dir will be changed after require the no-littering package, so be sure init the rime after no-littering (or I can configure no-littering to avoid the changing of this variable? WIP)
  :custom
  (default-input-method "rime")
  (rime-show-candidate 'posframe)
  (rime-translate-keybindings
   '("C-f" "C-b" "C-n" "C-p" "C-g" "C-`"))
  :config
  (setq rime-user-data-dir "~/.emacs.d/rime-config/"))
;;(setq pgtk-use-im-context-on-new-connection nil)
(provide 'meta-rime)  
