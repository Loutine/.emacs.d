;;use org-cons to have newest org function
(use-package org-plus-contrib
  :ensure t)
;;for some pretty entities especial for math
(use-package org
  :config
  (setq org-pretty-entities 1
      org-startup-with-inline-images t)
(defun shk-fix-inline-images ()
  (when org-inline-image-overlays
    (org-redisplay-inline-images)))
(add-hook 'org-babel-after-execute-hook 'shk-fix-inline-images)
;;org truncate
(add-hook 'org-mode-hook
	  (lambda()
	    (setq truncate-lines nil)))
;;for org-src excute
(setq org-babel-load-languages '((python . t)
				 (dot . t)
				 (ditaa . t)
				 (scheme . t))
      ))

(use-package org-bullets
  :ensure t
  :init
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
)
;;org-drill use for English-learning
(use-package org-drill
  :ensure t
  :config
  (setq org-drill-hide-item-headings-p nil
	org-drill-auto-pronounce t
	org-drill-learn-fraction 0.25
	org-drill-add-random-noise-to-intervals-p t)
)
;;concept mapping
(use-package org-brain
  :ensure t)
(use-package ox-twbs
  :ensure t
  :after org)
;;set a snippet for new word
(setq org-capture-templates
      '("n" "* " p " :drill:\ntranslate the word\n" "** Chinese\n** example" ))
(provide 'org_set)
