(setq gc-cons-threshold most-positive-fixnum
      file-name-handler-alist nil
      read-process-output-max (* 2048 2048)
      comp-deferred-compilation t
       custom-file "~/.emacs.d/customized.el")

(defvar add-subdirs-to-load-path-list
  '("~/.emacs.d/init/"
    "~/.emacs.d/orphan/"
    "~/.local/share/"
    "~/.opam/default/share/emacs/site-lisp")
  "list of path need to add to before require pacakge")

(defun add-subdirs-to-load-path (list)
  (dolist (path list)
    (let ((default-directory path))
      (normal-top-level-add-subdirs-to-load-path))))

(add-subdirs-to-load-path add-subdirs-to-load-path-list)
(provide 'early-init)

  
