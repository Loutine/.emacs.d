(use-package org-transclusion
  :straight
  (org-transclusion :type git :host github :repo "nobiot/org-transclusion"))
  
(use-package popweb-latex
  :disabled nil
  :straight (popweb :type git :host github :repo  "manateelazycat/popweb")
  :hook
  (org-mode . popweb-latex-mode)
  (latex-mode . popweb-latex-mode)
  )


(provide 'note-transclusion)
