(require 'straight_boot)

;;module: Meta -- for some necessary component
(require 'meta-buffer)
(require 'meta-nolitter)
(require 'meta-magit)
(require 'meta-vterm)
(require 'meta-rime)

;;module: Preface -- prettify emacs
(require 'preface)
(require 'preface-ligature)
(require 'preface-rainbow)
(require 'preface-theme)
(require 'preface-font)
;; (require 'preface-tab) actually no use


;;module: Auto-Complete -- for basic auto-completing setting and lsp setting
;(require 'init-lsp) too heavy and too slow
(require 'init-eglot)
(require 'init-company)
(require 'init-vertico)
(require 'init-consult)
;; (require 'init-corfu)
(require 'init-paredit)
(require 'init-avy)
(require 'init-which_key)


;;module: Workspace And Project -- for project managment and workspace manage
(require 'init-file_template)
(require 'init-project)
(require 'init-realgud)

;;module: Lang -- for programming language
(require 'lang-julia)
(require 'lang-lua)
(require 'lang-python)
(require 'lang-rust)
(require 'lang-racket)
(require 'lang-scala)
(require 'lang-OCaml)
(require 'lang-haskell)
(require 'lang-c_c++)
(require 'lang-coq)
(require 'lang-web)
(require 'lang-tex)
(require 'lang-go)
;; (require 'lang-flutter)
;; (require 'lang-rescript)

;;module: Texting -- for text editing and note taking and dictionary
;;Text file type
(require 'set_org)
(require 'set_md)
(require 'set_adoc)

;;Notetaking
(require 'note-roam) ;it would be fun to use another alternative transclusion
(require 'note-transclusion)
  
;;Dictionary
(require 'dict)

;;module: Application
(require 'app-gnus)
(require 'app-telega)
;;(require 'app-matrix)
(require 'app-calibre)
;(require 'app-EAF) EAF will take much resource ,so I suggest comment it and use a function to start it when you need it


;;Load the welcome page and customize variable
(load custom-file)
(use-package Loutine-splash
  :straight (Loutine-splash :type git :host github :repo "Loutine/loutine-splash")
  :demand
  :init
  (Loutine-splash))
