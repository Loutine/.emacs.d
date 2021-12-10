(use-package org-transclusion
  :straight
  (org-transclusion :type git :host github :repo "nobiot/org-transclusion"))
  
(use-package popweb-latex
  :disabled t
  :defer t
  :straight nil
  :hook
  (org-mode . popweb-latex-mode)
  (latex-mode . popweb-latex-mode)
  )


(provide 'note-transclusion)
