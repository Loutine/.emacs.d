;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package ein
  :ensure t
  :config
  (setq ein:output-area-inlined-images t))
(defun run-python-file ()
  (interactive)
  (if (get-buffer "*compilation*")
      (let ((kill-buffer-query-functions nil))
	(kill-buffer "*compilation*")))
  (compile (concat "python " buffer-file-name))
  )
(use-package pyvenv
  :init
  (setenv "WORKON_HOME" "/home/uhuru/anaconda3/envs"))
(provide 'lang-python)
;;; python-la.el ends here
