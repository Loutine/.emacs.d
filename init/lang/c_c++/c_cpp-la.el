;;using ccls for lsp server
(use-package ccls
  :ensure t
  :config
  (setq ccls-sem-highlight-method 'font-lock)
  )
;;define some useful cmake command
(defun cmake-debug-dir (workspace)
  (interactive)
  (concat workspace "/debug"))
(defun cmake-debug ()
  (interactive)
  (if (not (file-directory-p (cmake-debug-dir (lsp-workspace-root))))
      (make-directory (cmake-debug-dir (lsp-workspace-root))))
  (let ((default-directory (cmake-debug-dir (lsp-workspace-root)) ))
    (compile (concat "cmake -DCMAKE_BUILD_TYPE=Debug .."
		     "&&make"))))
;;===========================================================================================================================
(use-package gdb-mi
  :defer t
  :init
  (setq
   ;; use gdb-many-windows by default when `M-x gdb'
   gdb-many-windows t
   ;; Non-nil means display source file containing the main routine at startup
   gdb-show-main t)
  ;; invoke
(defadvice gdb-setup-windows (after activate)
  (set-gdb-layout)
  )

(defun set-gdb-layout(&optional c-buffer)
  (if (not c-buffer)
      (setq c-buffer (window-buffer (selected-window)))) ;; save current buffer

  ;; from http://stackoverflow.com/q/39762833/846686
  (set-window-dedicated-p (selected-window) nil) ;; unset dedicate state if needed
  (switch-to-buffer gud-comint-buffer)
  (delete-other-windows) ;; clean all

  (let* (
         (w-source (selected-window))
         (w-gdb (split-window w-source nil 'right)) ;; right bottom
	 (w-breakpoints (split-window w-gdb
				      (floor (* 0.1 (window-body-height)))
				      'above))
         (w-locals (split-window w-breakpoints nil 'above)) ;; right middle bottom
         (w-stack (split-window w-locals nil 'right)) ;; right middle top
         ;; right top ;; left bottom
	 (w-io (split-window w-source
			     (floor(* 0.9 (window-body-height)))
                             'below));; left top
         )
    (set-window-buffer w-io (gdb-get-buffer-create 'gdb-inferior-io))
    (set-window-dedicated-p w-io t)
    (set-window-buffer w-breakpoints (gdb-get-buffer-create 'gdb-breakpoints-buffer))
    (set-window-dedicated-p w-breakpoints t)
    (set-window-buffer w-locals (gdb-get-buffer-create 'gdb-locals-buffer))
    (set-window-dedicated-p w-locals t)
    (set-window-buffer w-stack (gdb-get-buffer-create 'gdb-stack-buffer))
    (set-window-dedicated-p w-stack t)
    (set-window-buffer w-gdb gud-comint-buffer)
    (set-window-buffer w-source c-buffer)
    (select-window w-gdb)
    )))
(provide 'c_cpp-la)
