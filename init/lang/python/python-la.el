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
(require 'python-mode)
(use-package lsp-python-ms
  :demand
  :ensure t
  :init (setq lsp-python-ms-auto-install-server t
	      lsp-python-ms-executable "~/.vscode-oss/extensions/ms-python.python-2020.8.105369/languageServer.0.5.51/Microsoft.Python.LanguageServer")
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
