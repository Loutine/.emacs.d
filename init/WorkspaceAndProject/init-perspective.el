(use-package perspective
  :straight
  (perspective :type git :host github :repo "nex3/perspective-el")
  :bind
  ("C-x C-b" . persp-list-buffers)
  :init
  (persp-mode)
  )

(provide 'init-perspective)
