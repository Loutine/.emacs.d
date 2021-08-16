;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package utop
  :ensure t
  :hook
  (tuareg-mode . utop-minor-mode)

  :config
  (setq utop-command "opam config exec -- utop -emacs")
  ;;(setq utop-command "opam config exec -- dune utop . -- -emacs")
)
   
(use-package tuareg
  :ensure t
  :mode
  ("\\.ml[ily]?\\'" . tuareg-mode)
  :config
  (setq tuareg-match-patterns-aligned t
	tuareg-indent-align-with-first-arg nil)
)

(use-package dune
  :ensure t
  :mode
  ("\\dune\\'" . dune-mode))
(provide 'OCaml-la)
(use-package ocamlformat
  :ensure t
  :custom (ocamlformat-enable 'enable-outside-detected-project)
  )

(load-file"~/.opam/default/share/emacs/site-lisp/ocp-indent.el")
