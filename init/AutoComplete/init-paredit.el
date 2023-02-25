;;; package --- Summary
;;; Commentary:
;;; Code:
;; error of server ,don't provide smart transit
(use-package paredit
  :elpaca (:package "paredit" :inherit t :fetcher git :depth nil :url "https://paredit.org/cgit/paredit" :files ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el" (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el")))
  :init
  (autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
  :hook ((emacs-lisp-mode . enable-paredit-mode)
	 (eval-expression-minibuffer-setup . enable-paredit-mode)
	 (ielm-mode . enable-paredit-mode)
	 (lisp-mode . enable-paredit-mode)
	 (lisp-interaction-mode . enable-paredit-mode)
	 (scheme-mode . enable-paredit-mode)
	 (racket-mode . enable-paredit-mode)))

(provide 'init-paredit)
;;; paredit_config.el ends here
