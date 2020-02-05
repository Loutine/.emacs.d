;;; package --- Summary
;;; Commentary:
;;; Code:
;;for some pretty entities especial for math
(use-package org
  :mode (("\\.org$" . org-mode))
  :ensure org-plus-contrib
  :config
  (setq org-pretty-entities 1
	org-startup-with-inline-images t)
    ;;org truncate

  (add-hook 'org-mode-hook
	    (lambda()
	      (setq truncate-lines nil)))
    ;;for org-src excute
    
  (use-package org-bullets
    :ensure t
    :init
    (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
    )
    ;;org-drill use for English-learning

  (use-package org-drill
    :ensure t
    :demand t
    :config
    (setq org-drill-hide-item-headings-p nil
	  org-drill-learn-fraction 0.25
	  org-drill-add-random-noise-to-intervals-p t)
    )
    ;;concept mapping
  (org-babel-do-load-languages 'org-babel-load-languages '((python . t)
							   (dot . t)
							   (ditaa . t)
							   (scheme . t)))

  (use-package org-brain
    :ensure t)
  (use-package ox-twbs
    :ensure t)
  )
(provide 'org_set)
;;; org_set.el ends here
