(use-package all-the-icons)
(use-package citar
  :bind (("C-c b" . citar-insert-citation)
         :map minibuffer-local-map
         ("M-b" . citar-insert-preset))
  :custom
  (citar-bibliography '("~/My Library.bib"))
  (citar-at-point-function 'embark-act)           ; Use `embark'
  :config
  (setq citar-symbols
      `((file ,(all-the-icons-faicon "file-o" :face 'all-the-icons-green :v-adjust -0.1) . " ")
        (note ,(all-the-icons-material "speaker_notes" :face 'all-the-icons-blue :v-adjust -0.3) . " ")
        (link ,(all-the-icons-octicon "link" :face 'all-the-icons-orange :v-adjust 0.01) . " ")))
  (setq citar-symbol-separator "  ")
)

(use-package citar-org
  :straight nil
  :after oc
  :custom
  (org-cite-insert-processor 'citar)
  (org-cite-follow-processor 'citar)
  (org-cite-activate-processor 'citar))
(use-package citar-embark
  :straight nil
  :after (citar embark)
  :config (citar-embark-mode))
(use-package citar-org-roam
  :after (org)
  :straight (citar-org-roam :type git :host github :repo "emacs-citar/citar-org-roam")
  :config
  (citar-org-roam-mode)
  (defun citar-org-roam--create-capture-note (citekey entry)
    "Open or create org-roam node for CITEKEY and ENTRY."
   ;; adapted from https://jethrokuan.github.io/org-roam-guide/#orgc48eb0d
    (let ((title (citar-format--entry
                   citar-org-roam-note-title-template entry)))
     (org-roam-capture-
      :templates
      '(("r" "reference" plain "%?" :if-new
         (file+head
          ;; REVIEW not sure the file name shoud be citekey alone.
          "%(concat
 (when citar-org-roam-subdir (concat citar-org-roam-subdir \"/\")) \"${citekey}.org\")"
          ":PROPERTIES:
:ROAM_REFS: @${citekey}
:END:
 #+title: ${title}\n
* Note
:PROPERTIES:
:NOTER_DOCUMENT: %(car (citar-get-files citekey))
:END:"
	  )
         :immediate-finish t
         :unnarrowed t))
      :info (list :citekey citekey)
      :node (org-roam-node-create :title title)
      :props '(:finalize find-file)))))

(provide 'note-citar)

