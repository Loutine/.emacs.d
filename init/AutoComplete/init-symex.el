;;; init-symex.el --- paredit alternative with better evil support  -*- lexical-binding: t; -*-

;; Copyright (C) 2023  Uhuru

;; Author: Uhuru <uhuru@archlinux>
;; Keywords: lisp

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

(use-package symex
  :elpaca t
  :custom (symex-modal-backend 'evil)
  :config
  (setq symex--user-evil-keyspec
	'(("j" . symex-go-up)
	  ("k" . symex-go-down)
	  ("C-j" . symex-climb-branch)
	  ("C-k" . symex-descend-branch)
	  ("M-j" . symex-goto-highest)
	  ("M-k" . symex-goto-lowest)))
  (symex-initialize)
  (evil-global-set-key 'normal (kbd "s-'") 'symex-mode-interface))
(provide 'init-symex)
;;; init-symex.el ends here
