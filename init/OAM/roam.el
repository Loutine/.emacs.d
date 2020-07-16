(use-package org-roam
      :ensure t
      ;; :hook
      ;; (after-init . org-roam-mode)
      :custom
      (org-roam-directory "~/org-roam/")
      :bind (:map org-roam-mode-map
              (("C-c n l" . org-roam)
               ("C-c n f" . org-roam-find-file)
               ("C-c n g" . org-roam-graph-show))
              :map org-mode-map
              (("C-c n i" . org-roam-insert))
              (("C-c n I" . org-roam-insert-immediate)))
      :config
      (setq org-roam-completion-system 'ivy))
(use-package org-roam-server
  :ensure t
  ;;:hook
  ;;(after-init . org-roam-mode)
  :config
  (setq org-roam-server-host "127.0.0.1"
        org-roam-server-port 8080
        org-roam-server-export-inline-images t
        org-roam-server-authenticate nil
        org-roam-server-network-arrows nil
        org-roam-server-network-label-truncate t
        org-roam-server-network-label-truncate-length 60
        org-roam-server-network-label-wrap-length 20))
(use-package company-org-roam
  :ensure t
  :hook
  (org-mode . company-mode)
  :config
  (push 'company-org-roam company-backends))
(require 'org-roam-protocol)

(provide 'roam)
      
