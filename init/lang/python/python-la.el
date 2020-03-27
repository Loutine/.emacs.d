;;; package --- Summary
;;; Commentary:
;;; Code:
(defun run-python-file ()
  (interactive)
  (if (get-buffer "*compilation*")
      (let ((kill-buffer-query-functions nil))
	(kill-buffer "*compilation*")))
  (compile (concat "python " buffer-file-name))
  )
(use-package python
  :hook
  (python-mode . electric-pair-mode)
  :bind
  ("C-c r" . run-python-file)
  )
(provide 'python-la)
;;; python-la.el ends here
