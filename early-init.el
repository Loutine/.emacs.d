(setq gc-cons-threshold most-positive-fixnum
      file-name-handler-alist nil
      read-process-output-max (* 2048 2048)
      comp-deferred-compilation t
      custom-file "~/.emacs.d/customized.el"
)
;; (setq socks-override-functions 1)
;; (setq socks-noproxy '("localhost"))
;; (require 'socks)
;; (setq url-gateway-method 'socks)
;; (setq socks-server '("Default server" "127.0.0.1" 1089 5))
(defun gnus-fast-init ()
  (interactive)
  (eval-after-load 'socks
    (let ((socks-override-functions 1)
	  (socks-noproxy '("localhost"))
	  (socks-server '("Default server" "127.0.0.1" 1089 5)))
      (gnus)
      ))
  )
(defvar add-subdirs-to-load-path-list
  '("~/.emacs.d/init/"
    "~/.emacs.d/orphan/"
    "~/.local/share/"
    ;;    "~/.opam/default/share/emacs/site-lisp"
    )
  "list of path need to add to before require pacakge")
(defvar debug-list
       '("~/.emacs.d/straight/build/")
       )
(defun add-subdirs-to-load-path (list)
  (dolist (path list)
    (let ((default-directory path))
      (normal-top-level-add-subdirs-to-load-path))))
(defun add-subdirs-to-load-path-debug ()
  (dolist (path debug-list)
    (let ((default-directory path))
      (normal-top-level-add-subdirs-to-load-path))))


(add-subdirs-to-load-path add-subdirs-to-load-path-list)
(provide 'early-init)

  
