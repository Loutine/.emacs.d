;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package ein_conf)
(defun run-python-file ()
  (interactive)
  (if (get-buffer "*compilation*")
      (let ((kill-buffer-query-functions nil))
	(kill-buffer "*compilation*")))
  (compile (concat "python " buffer-file-name))
  )
(use-package lsp-python-ms
  :ensure t
  :config (setq lsp-python-ms-auto-install-server t
		lsp-python-ms-executable "~/.vscode-insiders/extensions/ms-python.python-2020.11.358366026/languageServer.0.5.59/Microsoft.Python.LanguageServer")
  :hook (python-mode . (lambda ()
                          (require 'lsp-python-ms)
                          (lsp))))  ; or lsp-deferred
(use-package electric-pair-mode
  :hook
  (python-mode . electric-pair-mode)
  :bind
  ("C-c r" . run-python-file)
  )
(use-package elpy
  :ensure t)
(provide 'python-la)
;;; python-la.el ends here
