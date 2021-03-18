;;; package --- Summary
;;; Commentary:
;;; Code:
;;
(require 'color-identifiers-mode)
(add-hook 'after-init-hook 'global-color-identifiers-mode)
(use-package yasnippet
  :ensure t
  :hook
  ((prog-mode . yas-minor-mode)
   (org-mode . yas-minor-mode)
   (cc-mode . yas-minor-mode))
  )
(use-package yas-jit
  :ensure t)
(use-package yasnippet-snippets
  :ensure t)
(use-package company
  :ensure t
  :bind
  ("M-/" . company-complete)
  :hook
  ((prog-mode . company-mode)
   (eshell-mode . company-mode)
   (org-mode . company-mode))
  :config
  (define-key company-active-map [tab] #'company-complete-common-or-cycle)
  (setq company-idle-delay 0
	company-minimum-prefix-length 1
	company-selection-wrap-around t)
  (push 'company-capf company-backends))
;; (use-package company-lsp
;;   :ensure t
;;   :config
;;   (push 'company-lsp company-backends))
;(require 'icons-in-terminal)
(use-package company-box
  :ensure t
  :hook
  (lsp-mode . company-box-mode)
  (emacs-lisp-mode . company-box-mode)
  :init
  (setq company-box-icons-unknown 'fa_question_circle)

  (setq company-box-icons-elisp
      '((fa_tag :face font-lock-function-name-face) ;; Function
	(fa_cog :face font-lock-variable-name-face) ;; Variable
	(fa_cube :face font-lock-constant-face) ;; Feature
	(md_color_lens :face font-lock-doc-face))) ;; Face

  (setq company-box-icons-yasnippet 'fa_bookmark)
  
  (setq company-box-icons-lsp
	'((1 . fa_text_height) ;; Text
          (2 . (fa_tags :face font-lock-function-name-face)) ;; Method
          (3 . (fa_tag :face font-lock-function-name-face)) ;; Function
          (4 . (fa_tag :face font-lock-function-name-face)) ;; Constructor
          (5 . (fa_cog :foreground "#FF9800")) ;; Field
          (6 . (fa_cog :foreground "#FF9800")) ;; Variable
          (7 . (fa_cube :foreground "#7C4DFF")) ;; Class
          (8 . (fa_cube :foreground "#7C4DFF")) ;; Interface
          (9 . (fa_cube :foreground "#7C4DFF")) ;; Module
          (10 . (fa_cog :foreground "#FF9800")) ;; Property
          (11 . md_settings_system_daydream) ;; Unit
          (12 . (fa_cog :foreground "#FF9800")) ;; Value
          (13 . (md_storage :face font-lock-type-face)) ;; Enum
          (14 . (md_closed_caption :foreground "#009688")) ;; Keyword
          (15 . md_closed_caption) ;; Snippet
          (16 . (md_color_lens :face font-lock-doc-face)) ;; Color
          (17 . fa_file_text_o) ;; File
          (18 . md_refresh) ;; Reference
          (19 . fa_folder_open) ;; Folder
          (20 . (md_closed_caption :foreground "#009688")) ;; EnumMember
          (21 . (fa_square :face font-lock-constant-face)) ;; Constant
          (22 . (fa_cube :face font-lock-type-face)) ;; Struct
          (23 . fa_calendar) ;; Event
          (24 . fa_square_o) ;; Operator
          (25 . fa_arrows)) ;; TypeParameter
	))
(use-package company-coq
  :ensure t
  :hook (coq-mode . company-coq-mode)
  :config
  (setq company-coq-live-on-the-edge t)
  (with-eval-after-load 'company-coq))
(use-package flycheck
 :ensure t)

(provide 'company_config)
;;; company_config.el ends here
