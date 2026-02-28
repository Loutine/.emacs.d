;;; note-denote.el --- configuration for denote--a new note tool  -*- lexical-binding: t; -*-

;; Copyright (C) 2022  Uhuru

;; Author: Uhuru <uhuru@archlinux>
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

(use-package denote
  :ensure t
  :custom
  (denote-directory (expand-file-name "~/.denote/"))
  (denote-file-type 'org)
  )

(use-package citar-denote
  :demand t ;; Ensure minor mode is loaded
  :custom
  ;; Allow multiple notes per bibliographic entry
  (citar-open-always-create-notes t)
  ;; Use package defaults
  (citar-denote-file-type 'org)
  (citar-denote-subdir nil)
  (citar-denote-signature nil)
  (citar-denote-template nil)
  (citar-denote-keyword "bib")
  (citar-denote-use-bib-keywords nil)
  (citar-denote-title-format "title")
  (citar-denote-title-format-authors 1)
  (citar-denote-title-format-andstr "and")
  (citar-denote-subdir t)
  :config
  (citar-denote-mode)
  ;; Bind all available commands
  :bind (("C-c w c" . citar-create-note)
         ("C-c w n" . citar-denote-open-note)
         ("C-c w d" . citar-denote-dwim)
         ("C-c w e" . citar-denote-open-reference-entry)
         ("C-c w a" . citar-denote-add-citekey)
         ("C-c w k" . citar-denote-remove-citekey)
         ("C-c w r" . citar-denote-find-reference)
         ("C-c w l" . citar-denote-link-reference)
         ("C-c w f" . citar-denote-find-citation)
         ("C-c w x" . citar-denote-nocite)
         ("C-c w y" . citar-denote-cite-nocite)))
(use-package denote-explore
  :custom
  (denote-explore-network-directory "~/Documents/notes/graphs/")
  (denote-explore-network-filename "denote-network")
  (denote-explore-network-format 'graphviz)
  (denote-explore-network-graphviz-filetype "svg")
  (denote-explore-network-keywords-ignore '("bib" "fleet")))
(provide 'note-denote)
;;; note-denote.el ends here
