;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package org
  :demand
  :straight t
  :bind ("C-c a" . org-agenda-today)
)

(use-package org-bullets
  :after (org)
  :init
  ;;org bullets
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
  )
;; (use-package org-pdftools
;;   :hook (org-mode . org-pdftools-setup-link)
;;   (after-init . pdf-loader-install)
;;   )

;; (use-package org-noter-pdftools
;;   :after org-noter
;;   :config
;;   (with-eval-after-load 'pdf-annot
;;     (add-hook 'pdf-annot-activate-handler-functions #'org-noter-pdftools-jump-to-note)))


(provide 'set_org)
;;; org_set.el ends here
