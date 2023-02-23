;;using ccls for lsp server
(use-package cc-mode
  :bind (:map c-mode-map
	      ("C-c s" . quick-compile-c/cpp)))

(use-package cmake-mode
    :mode "CMakeLists.txt"
    :hook
    (c++-mode . rainbow-delimiters-mode))

;; (use-package cmake-build
;;   :straight nil)
;; define some useful cmake command

(defun cmake-debug-dir (workspace)
  (concat workspace "/debug"))
(defun cmake-debug ()
  (interactive)
  (if (not (file-directory-p (cmake-debug-dir (lsp-workspace-root))))
      (make-directory (cmake-debug-dir (lsp-workspace-root))))
  (let ((default-directory (cmake-debug-dir (lsp-workspace-root)) ))
    (compile (concat "cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS=1 .."
		     "&&make"
		     "&&cp compile_commands.json ../"))))
 ;;================================================================================================================

(defun quick-compile-c/cpp ()
  (interactive)
  (let* ((extension (file-name-extension (buffer-file-name)))
	 (compiler (cond ((string= extension "c")
			  "gcc")
			 ((string= extension "cpp")
			  "g++"))))
    (compile (concat compiler
		     " -Wall -g -o "
		     (file-name-base (buffer-file-name))
		     " "
		     (buffer-file-name))
	     nil)))


 ;;================================================================================================================
(provide 'lang-c_c++)
