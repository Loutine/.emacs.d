(setq package-enable-at-startup nil)
(setq custom-file "~/.emacs.d/custom.el")

;; (defconst add-subdirs-to-load-path-list
;;   '("~/.emacs.d/init/"
;;     "~/.emacs.d/orphan/"
;;     )
;;   "list of path need to add to before require pacakge")
;; (defun add-subdirs-to-load-path (list)
;;   (dolist (path list)
;;     (let ((default-directory path))
;;       (normal-top-level-add-subdirs-to-load-path))))
;;(add-subdirs-to-load-path add-subdirs-to-load-path-list)

(let ((default-directory "~/.emacs.d/init/"))
  (normal-top-level-add-subdirs-to-load-path))

(provide 'early-init)
