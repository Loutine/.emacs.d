(use-package latex-preview-pane)
(use-package lsp-latex
  ;; :bind (:map LaTeX-mode-map
  ;; 	      ("C-c b" . lsp-latex-build)
  ;; 	      ("M-p" . lsp-latex-forward-search))
  )
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(setq tex-command "xelatex --synctex=1")

;; Setting for pdf-tools
(setq lsp-latex-forward-search-executable "zathura")
(setq lsp-latex-forward-search-args
      '("--synctex-forward" "%l:1:%f" "%p"))
(provide 'lang-tex)
