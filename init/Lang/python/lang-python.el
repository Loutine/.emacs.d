;;; package --- Summary
;;; Commentary:
;;; Code:
(require 'ein_conf)
(defun run-python-file ()
  (interactive)
  (if (get-buffer "*compilation*")
      (let ((kill-buffer-query-functions nil))
	(kill-buffer "*compilation*")))
  (compile (concat "python " buffer-file-name))
  )
(use-package lsp-pyright
  :hook (python-mode . (lambda ()
                          (require 'lsp-pyright)
                          (lsp))))  ; or lsp-deferred
(use-package electric-pair-mode
  :straight nil
  :hook
  (python-mode . electric-pair-mode)
  :bind
  ("C-c r" . run-python-file)
  )
(use-package elpy)
(provide 'lang-python)
;;; python-la.el ends here
