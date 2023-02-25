(require 'elpaca_boot)

;;module: Meta -- for some necessary component

(require 'meta-buffer)
(require 'meta-nolitter)
(require 'meta-vterm)
(require 'meta-rime)
(require 'meta-magit)
(require 'meta-hydra)
(require 'meta-edit)
;;module: Preface -- prettify emacs

(require 'preface)
(require 'preface-ligature)
(require 'preface-rainbow)
(require 'preface-theme)
(require 'preface-font)

;;module: Auto-Complete -- for basic auto-completing setting and lsp setting
;;Actually there’re 3 different solution for auto-complete
;;1. company
;;(require 'init-company)
;;the oldest but the most reliable

;;2. corfu
;;the newest one, with the emacs builtin function, light, beautiful, but flawed
(require 'init-corfu)

;;3. acm
;;which is a part of lsp-bridge, hope it can be seperated from its parent project
;;(require 'init-lspbridge)

(require 'init-citre)
(require 'init-yasnippet)
(require 'init-vertico)
(require 'init-consult)

;;And the language-server-protocol
(require 'init-eglot)
(require 'init-lsp)

(require 'init-embark)
(require 'init-paredit)
(require 'init-avy)
(require 'init-which_key)

;;module: Workspace And Project -- for project managment and workspace manage

(require 'init-project)
(require 'init-realgud)

;;module: Lang -- for programming language
(require 'lang-julia)
(require 'lang-lua)
(require 'lang-python)
(require 'lang-racket)
(require 'lang-scala)
(require 'lang-OCaml)
(require 'lang-haskell)
(require 'lang-c_c++)
(require 'lang-coq)
(require 'lang-web)
(require 'lang-tex)
(require 'lang-go)
(require 'lang-elixir)
(require 'lang-APL)
;;(require 'lang-rust)


;;module: Texting -- for text editing and note taking and dictionary
;;Text file type
(require 'set_org)
(require 'set_md)
(require 'set_adoc)

;;Notetaking
(require 'note-pdf)
;;(require 'note-deft)
;;(require 'note-transclusion)
(require 'note-citar)
(require 'note-denote)

;;Dictionary
(require 'dict)

;;module: Application
(require 'app-telega)
;; (require 'app-gnus)
;; (require 'app-matrix)


;;Load the welcome page and customize variable
(load custom-file)

(use-package Loutine-splash
  :elpaca (Loutine-splash :host github :repo "Loutine/loutine-splash")
  :config
  (if window-system
      (Loutine-splash)))
