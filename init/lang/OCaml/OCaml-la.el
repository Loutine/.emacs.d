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
  ("\\.ml[il]?\\'" . tuareg-mode)
  ("\\.mly\\'" . tuareg-menhir-mode)
  :config
  (setq tuareg-match-patterns-aligned t
	tuareg-indent-align-with-first-arg nil))


(use-package dune
  :ensure t
  :mode
  ("\\dune\\'" . dune-mode))

(use-package ocamlformat
  :ensure t
  :custom (ocamlformat-enable 'enable-outside-detected-project)
  )

(load-file"~/.opam/default/share/emacs/site-lisp/ocp-indent.el")

;; (use-package merlin
;;   :hook
;;   (tuareg-mode . merlin-mode)
;;   :config
;;   (setq merlin-command "~/.opam/default/bin/ocamlmerlin"))

(provide 'OCaml-la)
