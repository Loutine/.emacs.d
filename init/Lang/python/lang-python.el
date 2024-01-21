;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package ein
  :config
  (setq ein:output-area-inlined-images t))

(defun run-python-file ()
  (interactive)
  (if (get-buffer "*compilation*")
      (let ((kill-buffer-query-functions nil))
	(kill-buffer "*compilation*")))
  (compile (concat "python " buffer-file-name))
  )
;; (use-package comint-mime
;;   :hook ((shell-mode inferior-python-mode) . comint-mime-setup))

(use-package pyvenv
  :init
  (setenv "WORKON_HOME" "~/.pyenv/versions")
  ;https://lists.gnu.org/archive/html/help-gnu-emacs/2021-09/msg00535.html
  (defun try/pyvenv-workon ()
    (when (buffer-file-name)
      (let* ((python-version ".python-version")
             (project-dir (locate-dominating-file (buffer-file-name) python-version)))
        (when project-dir
          (pyvenv-workon
            (with-temp-buffer
              (insert-file-contents (expand-file-name python-version project-dir))
              (car (split-string (buffer-string)))))))))

  :config
  (pyvenv-mode 1)
  (setq pyvenv-post-activate-hooks
        (list (lambda ()
                ;https://github.com/astoff/comint-mime#usage 
                ;https://github.com/astoff/comint-mime/issues/2#issuecomment-922462074
                (when (executable-find "ipython3")
                  (setq python-shell-interpreter "ipython3"
                        ;python-shell-interpreter-args "--simple-prompt --classic"
                        ;https://elpy.readthedocs.io/en/latest/ide.html#interpreter-setup
                        python-shell-interpreter-args "-i --simple-prompt --classic --pprint")))))              
  (setq pyvenv-post-deactivate-hooks
        (list (lambda ()
                (setq python-shell-interpreter "python3")))))

(use-package python-mode
  :hook (python-mode . try/pyvenv-workon))

(provide 'lang-python)
;;; python-la.el ends here
