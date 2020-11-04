;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package org
  :mode (("\\.org$" . org-mode))
  :custom (org-modules  '(org-habit))
  :bind ("C-c a" . org-agenda-today)
  :config
  ;;prettify the org
  (setq org-startup-with-inline-images t);org inline images
  (use-package org-bullets
    :ensure t
    :init
    ;;org bullets
    (add-hook 'org-mode-hook
	      (lambda()
		(org-bullets-mode 1)))
    ;;org truncate
    (add-hook 'org-mode-hook
	      (lambda()
		(setq truncate-lines nil)))
    )

  ;;org-agenda
  (use-package org-agenda
    :demand
    :config
    ;;use time grid
    (setq org-todo-keywords
	  '((sequence "TODO(t)" "START(s)" "|" "DONE(d!)" "CANCLED(c@)")))
    (setq org-agenda-use-time-grid t
	  org-habit-show-habits-only-for-today nil
	  org-agenda-repeating-timestamp-show-all t
	  org-log-into-drawer t)
    (defun org-agenda-today ()
      (interactive)
      (org-agenda nil "n" nil)
      (org-agenda-day-view (cadddr (decode-time (current-time))))
      )
    )


  ;;org-drill use for English-learning
  (use-package org-drill
    :config
    (setq org-drill-hide-item-headings-p nil
	  org-drill-learn-fraction 0.25
	  org-drill-add-random-noise-to-intervals-p t)
    )
    ;;concept mapping
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((python . t)
     (dot . t)
     (ditaa . t)
     (scheme . t)))
  )
(require 'valign)
(add-hook 'org-mode-hook #'valign-mode)
(setq valign-fancy-bar 1)
(provide 'set_org)
;;; org_set.el ends here
