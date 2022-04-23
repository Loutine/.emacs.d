(setq gc-cons-threshold most-positive-fixnum
      file-name-handler-alist nil
      read-process-output-max (* 2048 2048)
      custom-file "~/.emacs.d/custom.el"
      )

(push '(menu-bar-lines . 0) default-frame-alist)
(push '(tool-bar-lines . 1) default-frame-alist)

(defun gnus-fast-init ()
  (interactive)
  (eval-after-load 'socks
    (let ((socks-override-functions 1)
	  (socks-noproxy '("localhost"))
	  (socks-server '("Default server" "127.0.0.1" 1089 5)))
      (gnus)
      ))
  )

(defconst add-subdirs-to-load-path-list
  '("~/.emacs.d/init/"
    "~/.emacs.d/orphan/"
    )
  "list of path need to add to before require pacakge")
(defun add-subdirs-to-load-path (list)
  (dolist (path list)
    (let ((default-directory path))
      (normal-top-level-add-subdirs-to-load-path))))

(add-subdirs-to-load-path add-subdirs-to-load-path-list)

(provide 'early-init)
