;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package org
  :mode (("\\.org$" . org-mode))
  :custom (org-modules  '(org-habit))
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
    :config
    ;;use time grid
    (setq org-agenda-use-time-grid t)
    (setq org-habit-show-habits-only-for-today nil)
    (setq org-agenda-repeating-timestamp-show-all t))


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
(provide 'set_org)
;;; org_set.el ends here
