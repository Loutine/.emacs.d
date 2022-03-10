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
(use-package lsp-pyright
  :hook (python-mode . (lambda ()
                         (require 'lsp-pyright)
                         (lsp))))  ; or lsp-deferred
(use-package pyvenv
  :init
  (setenv "WORKON_HOME" "/home/uhuru/anaconda3/envs"))
;(use-package conda)
(use-package electric-pair-mode
  :straight nil
  :hook
  (python-mode . electric-pair-mode)
  )
(provide 'lang-python)
;;; python-la.el ends here
