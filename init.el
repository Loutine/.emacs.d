(load custom-file)
(require 'straight_boot)

;;module: Meta -- for some necessary component
(require 'meta-buffer)
(require 'meta-magit)
(require 'meta-vterm)
(require 'meta-rime)

;;module: Preface -- prettify emacs
(require 'preface)
(require 'preface-ligature)
(require 'preface-rainbow)
(require 'preface-font)
(require 'preface-theme)


;;module: Auto-Complete
(require 'init-lsp)
(require 'init-company)
(require 'init-ivy)
(require 'init-paredit)
(require 'init-avy)
(require 'init-which_key)
;;(require 'init-dap) must be the worst debuging environment i've ever used.

;;module: Workspace And Project -- for project managment and workspace manage
(require 'init-projectile)
(require 'init-perspective)
(require 'init-treemacs)


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
;;(require 'lang-flutter) must be the worst language i have ever used 
;;(require 'lang-rescript)

  
;;module: Texting -- for text editing and note taking and dictionary
;;Notetaking
(require 'note-roam) ;it would be fun to use another alternative transclusion
(require 'note-transclusion)
  
;;Text file type
(require 'set_org)
(require 'set_md)
(require 'set_adoc)

;;Dictionary
(require 'dict)

;;module: Application
(require 'app-telega)
;;(require 'app-EAF)
;;EAF will take much resource ,so I suggest comment it and use a function to start it when you need it

;;Load the welcome page
(require 'Loutine-splash)
(Loutine-splash)
