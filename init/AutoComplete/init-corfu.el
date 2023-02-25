(use-package corfu
	     ;; Optional customizations
	     :custom
	     (corfu-cycle t)                ;; Enable cycling for `corfu-next/previous'
	     (corfu-auto t)                 ;; Enable auto completion
	     (corfu-auto-prefix 1)
	     ;; (corfu-separator ?\s)          ;; Orderless field separator
	     ;; (corfu-quit-at-boundary nil)   ;; Never quit at completion boundary
	     ;; (corfu-quit-no-match nil)      ;; Never quit, even if there is no match
	     ;; (corfu-preview-current nil)    ;; Disable current candidate preview
	     (corfu-preselect-first t)    ;; Disable candidate preselection
	     ;; (corfu-on-exact-match nil)     ;; Configure handling of exact matches
	     ;; (corfu-echo-documentation nil) ;; Disable documentation in the echo area
	     ;; (corfu-scroll-margin 5)        ;; Use scroll margin

	     ;; You may want to enable Corfu only for certain modes.
	     ;; :hook ((prog-mode . corfu-mode)
	     ;;        (shell-mode . corfu-mode)
	     ;;        (eshell-mode . corfu-mode))

	     ;; Recommended: Enable Corfu globally.
	     ;; This is recommended since dabbrev can be used globally (M-/).
	     :bind
	     (:map corfu-map
		   ("TAB" . corfu-next)
		   ([tab] . corfu-next)
		   ("S-TAB" . corfu-previous)
		   ([backtab] . corfu-previous))
	     :init
	     (global-corfu-mode))


(use-package cape
	     :after corfu
	     ;; Bind dedicated completion commands
	     ;; Alternative prefix keys: C-c p, M-p, M-+, ...
	     :bind (("C-c p p" . completion-at-point) ;; capf
		    ("C-c p t" . complete-tag)        ;; etags
		    ("C-c p d" . cape-dabbrev)        ;; or dabbrev-completion
		    ("C-c p h" . cape-history)
		    ("C-c p f" . cape-file)
		    ("C-c p k" . cape-keyword)
		    ("C-c p s" . cape-symbol)
		    ("C-c p a" . cape-abbrev)
		    ("C-c p i" . cape-ispell)
		    ("C-c p l" . cape-line)
		    ("C-c p w" . cape-dict)
		    ("C-c p \\" . cape-tex)
		    ("C-c p _" . cape-tex)
		    ("C-c p ^" . cape-tex)
		    ("C-c p &" . cape-sgml)
		    ("C-c p r" . cape-rfc1345))
	     :init
	     ;; Add `completion-at-point-functions', used by `completion-at-point'.
	     (add-to-list 'completion-at-point-functions #'cape-dabbrev)
	     (add-to-list 'completion-at-point-functions #'cape-file)
	     ;;(add-to-list 'completion-at-point-functions #'cape-history)
	     ;;(add-to-list 'completion-at-point-functions #'cape-keyword)
	     ;;(add-to-list 'completion-at-point-functions #'cape-tex)
	     ;;(add-to-list 'completion-at-point-functions #'cape-sgml)
	     ;;(add-to-list 'completion-at-point-functions #'cape-rfc1345)
	     ;;(add-to-list 'completion-at-point-functions #'cape-abbrev)
	     ;;(add-to-list 'completion-at-point-functions #'cape-ispell)
	     ;;(add-to-list 'completion-at-point-functions #'cape-dict)
	     ;;(add-to-list 'completion-at-point-functions #'cape-symbol)
	     ;;(add-to-list 'completion-at-point-functions #'cape-line)
	     )
;; (use-package corfu-doc
;;   :config
;;   (add-hook 'corfu-mode-hook #'corfu-doc-mode)
;;   (define-key corfu-map (kbd "M-p") #'corfu-doc-scroll-down) ;; corfu-next
;;   (define-key corfu-map (kbd "M-n") #'corfu-doc-scroll-up)  ;; corfu-previous
;; )

(use-package corfu-yasnippet
  :elpaca (corfu-yasnippet
	      :host github
	      :repo "elken/cape-yasnippet")
  :config
  (add-to-list 'completion-at-point-functions #'cape-yasnippet))
(use-package kind-icon
  :after (corfu)
  :custom
  (kind-icon-default-face 'corfu-default) ; to compute blended backgrounds correctly
  :config
  (add-to-list 'corfu-margin-formatters #'kind-icon-margin-formatter))
;; (straight-use-package
;;  '(corfu-terminal
;;    :type git
;;    :repo "https://codeberg.org/akib/emacs-corfu-terminal.git"))
(provide 'init-corfu)
