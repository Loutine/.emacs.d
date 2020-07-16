;;using ccls for lsp server
(use-package ccls
  :ensure t
  :hook
  (c++-mode . rainbow-delimiters-mode)
  (c++-mode . electric-pair-local-mode)
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
;;================================================================================================================
(setq gdb-many-windows t)
(defadvice gdb-setup-windows (around setup-more-gdb-windows activate)
  ad-do-it
  (gdb-setup-my-windows)
  )
(defun gdb-setup-my-windows ()
  (set-window-dedicated-p (selected-window) nil)
  (switch-to-buffer gud-comint-buffer)
  (delete-other-windows)
  (let
    ((win0 (selected-window))             ; source
     (win1 (split-window-horizontally
             (floor (* 0.5 (window-width)))))   ; gdb
     (win2 (split-window-vertically
             (floor (* 0.7 (window-body-height))))) ; bp
    )
    ;; set source buffer
    (set-window-buffer
     win0
     (if gud-last-last-frame
         (gud-find-file (car gud-last-last-frame))
       (if gdb-main-file
           (gud-find-file gdb-main-file)
         (list-buffers-noselect))))
    (setq gdb-source-window win0)

    (select-window win1)
    (split-window-vertically (floor (* 0.7 (window-body-height))))
    (split-window-horizontally (floor (* 0.7 (window-body-width))))
    (split-window-vertically (floor (* 0.4 (window-body-height))))

    ;; set locals window
    (gdb-set-window-buffer (gdb-get-buffer-create 'gdb-locals-buffer))
    ;; set assembly window
    (other-window 1)
    (gdb-set-window-buffer (gdb-stack-buffer-name))
    (other-window 1)
    (gdb-set-window-buffer (gdb-get-buffer-create 'gdb-registers-buffer))
    ;; set breakpoint buffer
    (other-window 1)
    (gdb-set-window-buffer (gdb-breakpoints-buffer-name))
    ;; set focus on gdb buffer
    (select-window win2)
  )
)
(provide 'c_cpp-la)
