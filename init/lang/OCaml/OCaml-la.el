;;; package --- Summary
;;; Commentary:
;;; Code:
(setq OCaml-v "4.09.1")
(let ((default-directory "~/.opam/4.09.1/share/emacs/"))
  (normal-top-level-add-subdirs-to-load-path))
(use-package utop
  :hook
  (tuareg-mode . utop-minor-mode)
  (utop-mode . company-mode))
(use-package tuareg
  :mode
  ("\\.ml[ily]?\\'" . tuareg-mode)
  :config
  (setq tuareg-match-patterns-aligned t
	tuareg-indent-align-with-first-arg t))
(use-package dune
  :mode
  ("\\dune\\'" . dune-mode))
(use-package ocp-index
  :hook
  (tuareg-mode . ocp-index-mode))
(provide 'OCaml-la)
