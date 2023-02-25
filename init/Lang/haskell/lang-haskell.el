;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package haskell-mode
  :config
  (require 'haskell-interactive-mode)
  (require 'haskell-process)
  (add-hook 'haskell-mode-hook 'interactive-haskell-mode)
  (define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-or-reload)
  (define-key haskell-mode-map (kbd "C-`") 'haskell-interactive-bring)
  (define-key haskell-mode-map (kbd "C-c C-t") 'haskell-process-do-type)
  (define-key haskell-mode-map (kbd "C-c C-i") 'haskell-process-do-info)
  (define-key haskell-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
  (define-key haskell-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
  (define-key haskell-mode-map (kbd "C-c c") 'haskell-process-cabal)
  (define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-or-reload)
  (define-key haskell-mode-map (kbd "C-`") 'haskell-interactive-bring)
  (define-key haskell-mode-map (kbd "C-c C-t") 'haskell-process-do-type)
  (define-key haskell-mode-map (kbd "C-c C-i") 'haskell-process-do-info)
  (define-key haskell-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
  (define-key haskell-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
  (define-key haskell-mode-map (kbd "C-c c") 'haskell-process-cabal)
  )

;; (use-package lsp-haskell
;;   :straight t
;;   :hook ((haskell-mode . lsp)
;; 	 (haskell-literate-mode . lsp)))

(use-package align
  :elpaca nil
  :config
  (add-to-list 'align-rules-list
               '(haskell-types
		 (regexp . "\\(\\s-+\\)\\(::\\|∷\\)\\s-+")
		 (modes quote (haskell-mode haskell-literate-mode))))
  (add-to-list 'align-rules-list
               '(haskell-assignment
		 (regexp . "\\(\\s-+\\)=\\s-+")
		 (modes quote (haskell-mode haskell-literate-mode))))
  (add-to-list 'align-rules-list
               '(haskell-arrows
		 (regexp . "\\(\\s-+\\)\\(->\\|→\\)\\s-+")
		 (modes quote (haskell-mode haskell-literate-mode))))
  (add-to-list 'align-rules-list
               '(haskell-left-arrows
		 (regexp . "\\(\\s-+\\)\\(<-\\|←\\)\\s-+")
		 (modes quote (haskell-mode haskell-literate-mode)))))


(provide 'lang-haskell)
;;; haskell-la.el ends here
  
