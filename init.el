;;; init.el --- Loutine's emacs configuration        -*- lexical-binding: t; -*-

;; Copyright (C) 2024  Uhuru

;; Author: Uhuru(require 'elpaca_boot) <Uhuru-Loutine@outlook.com>
;; Keywords: 

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; 

;;; Code:
(require 'elpaca_boot)

(require 'meta-network)
(require 'meta-buffer)
(require 'meta-nolitter)
(require 'meta-vterm)
;;(require 'meta-eshell)
(require 'meta-rime)
(require 'meta-magit)
(require 'meta-hydra)
(require 'meta-edit)
(require 'meta-evil)
;;(require 'meta-meow)
(require 'meta-nix)

;; ;;module: Preface -- prettify emacs
(require 'preface)
(require 'preface-modeline)
(require 'preface-ligature)
(require 'preface-parentheses)
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

;;(require 'init-citre)
(require 'init-yasnippet)
(require 'init-vertico)
(require 'init-consult)

;;And the language-server-protocol
;;(require 'init-eglot)			  	
(require 'init-lsp)

;; tree-sitter still not usable
(require 'init-tree-sitter)
(require 'init-embark)
;; (require 'init-paredit)
;; alternative to paredit
(require 'init-symex)
;; (require 'init-puni)
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
(require 'lang-scheme)
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
;;(require 'lang-clojure)
(require 'lang-rust)
(require 'lang-lisp)


;;module: Texting -- for text editing and note taking and dictionary
;; ;;Text file type
(require 'set_org)
(require 'set_md)
(require 'set_adoc)

;; ;;Notetaking

(require 'note-pdf)
;; (require 'note-deft)
;; (require 'note-transclusion)
(require 'note-typst)
;; (require 'note-citar)
;; (require 'note-denote)

;;Dictionary
(require 'dict)

;;module: Application
(require 'app-telega)
(require 'app-gnus)
(require 'app-mu4e)
;;(require 'app-wanderlust)
;;(require 'app-matrix)

(use-package Loutine-splash
  :ensure (Loutine-splash :host github :repo "Loutine/loutine-splash")
  :config
  (if window-system
      (Loutine-splash)))

;; (load-file (let ((coding-system-for-read 'utf-8))
;;                 (shell-command-to-string "agda-mode locate")))

;Load the welcome page and customize variable
(load custom-file)
(elpaca-wait)

