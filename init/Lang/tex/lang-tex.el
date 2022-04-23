(use-package latex-preview-pane)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(setq tex-command "xelatex --synctex=1")

(provide 'lang-tex)
