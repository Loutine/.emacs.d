;; Assuming usage with dart-mode
(use-package dart-mode
  ;; Optional
  :hook (dart-mode . flutter-test-mode))

(use-package flutter
  :after dart-mode
  :bind (:map dart-mode-map
              ("C-M-x" . #'flutter-run-or-hot-reload)))
;; Optional
(use-package flutter-l10n-flycheck
  :after flutter
  :config
  (flutter-l10n-flycheck-setup))
(use-package hover :ensure t)
(use-package lsp-dart
  :ensure t
  :init
  (setq lsp-dart-flutter-sdk-dir  "/home/loutine/snap/flutter/common/flutter/"
	))
(provide 'lang-futter)
