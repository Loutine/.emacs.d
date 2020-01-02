(use-package org-plus-contrib
  :ensure t
  :disabled t)

(setq org-pretty-entities 1)

(setq org-startup-with-inline-images t)
(defun shk-fix-inline-images ()
  (when org-inline-image-overlays
    (org-redisplay-inline-images)))
(add-hook 'org-babel-after-execute-hook 'shk-fix-inline-images)

(add-hook 'org-mode-hook
	  (lambda()
	    (setq truncate-lines nil)))

(org-babel-do-load-languages
 'org-babel-load-languages '((C . t)
			     (java . t)
			     (python . t)
			     (dot . t)
			     (ditaa . t)
			     (rust . t)
			     (scheme . t))
 )

(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
)

(use-package ox-twbs
  :defer t
  :disabled t)

(use-package org-drill
  :ensure t
  :config
  (setq org-drill-hide-item-headings-p nil
	org-drill-auto-pronounce t
	org-drill-learn-fraction 0.25
	org-drill-add-random-noise-to-intervals-p t)
)

(use-package org-brain
  :ensure t)

(require 'org-tempo)
(tempo-define-template "new-words"
	       '("* " p " :drill:\ntranslate the word\n" "** Chinese\n** example" >)
	       "<n"
	       "Insert a property tempate")

(provide 'org_set)
