;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package multiple-cursors
  :init
  (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
  (global-set-key (kbd "C->") 'mc/mark-next-like-this)
  (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
  (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
  )

(defun my-buffer-predicate (buffer)
  (if (and (string-match "^[\*\#].*[\*\#]$" (buffer-name buffer))
	   (not (string-match "*dashboard*" (buffer-name buffer)))
	   )
      nil
    t))
(set-frame-parameter nil 'buffer-predicate 'my-buffer-predicate)

(defun toggle-frame-split ()
  "If the frame is split vertically, split it horizontally or vice versa.
Assumes that the frame is only split into two."
  (interactive)
  (unless (= (length (window-list)) 2) (error "Can only toggle a frame split in two"))
  (let ((split-vertically-p (window-combined-p)))
    (delete-window) ; closes current window
    (if split-vertically-p
	(split-window-horizontally)
      (split-window-vertically)) ; gives us a split with the other window twice
    (switch-to-buffer nil))) ; restore the original window in this part of the frame

;; I don't use the default binding of 'C-x 5', so use toggle-frame-split instead
(global-set-key (kbd "C-x 9") 'toggle-frame-split)

(use-package ace-window
  :bind ("M-o" . ace-window)
  :config (ace-window-display-mode 1))
(use-package golden-ratio)
(use-package sudo-edit)
(provide 'meta-buffer)
;;; meta-buffer.el ends here
