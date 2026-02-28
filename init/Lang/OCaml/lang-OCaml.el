;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package utop
  :ensure t
  :hook
  (tuareg-mode . utop-minor-mode)

  :config
  (setq utop-command "dune utop -- ./ -emacs")
)
   
(use-package tuareg
  :ensure t
  :mode
  ("\\.ml[il]?\\'" . tuareg-mode)
  ("\\.mly\\'" . tuareg-menhir-mode)
  :config
  (setq tuareg-match-patterns-aligned t
	tuareg-indent-align-with-first-arg nil
	tuareg-opam-insinuate t))


(use-package dune
  :ensure t
  :mode
  ("\\dune\\'" . dune-mode))

(use-package ocamlformat
  :ensure t
  :custom (ocamlformat-enable 'enable-outside-detected-project)
  )

(use-package ocp-indent
  :ensure t)
(provide 'lang-OCaml)
