(defun load-eaf ()
  (interactive)
  (let ((inhibit-message t))
    (require 'eaf nil nil)
    )
  (message "eaf init!"))
(use-package eaf
  :ensure nil
  :custom
  (eaf-find-alternate-file-in-dired t)
  :diminish eaf-mode
  :bind (:map eaf-interleave-mode-map
              ("M-." . 'eaf-interleave-sync-current-note)
              ("M-p" . 'eaf-interleave-sync-previous-note)
              ("M-n" . 'eaf-interleave-sync-next-note)
              :map eaf-interleave-app-mode-map
              ("C-c M-i" . 'eaf-interleave-add-note)
              ("C-c M-o" . 'eaf-interleave-open-notes-file)
              ("C-c M-q" . 'eaf-interleave-quit))
  :config
  (add-hook 'eaf-pdf-viewer-hook 'eaf-interleave-app-mode)
  (add-hook 'eaf-browser-hook 'eaf-interleave-app-mode)
  (add-hook 'org-mode-hook 'eaf-interleave-mode)
  (setq eaf-interleave-org-notes-dir-list '("~/org/interleave/"))
  (setq eaf-interleave-split-direction 'vertical)
  (setq eaf-interleave-disable-narrowing t)
  (setq eaf-interleave-split-lines 20)
  (eaf-setq eaf-pdf-dark-mode "false"))
(provide 'EAF)
