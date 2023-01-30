;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package org-mode
  :bind ("C-c a" . org-agenda-today)
  :init
  (setq org-startup-indented t)
)

(use-package org-bullets
  :after (org)
  :init
  ;;org bullets
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
  )


(provide 'set_org)
;;; org_set.el ends here
