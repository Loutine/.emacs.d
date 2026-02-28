;;; meta-eshell.el --- eshell configuration          -*- lexical-binding: t; -*-

;; Copyright (C) 2024  Uhuru

;; Author: Uhuru <uhuru@nixos>
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


(use-package eshell-toggle
  :ensure t
  :custom
  (eshell-toggle-size-fraction 3)
  (eshell-toggle-find-project-root-package t)
  (eshell-toggle-run-command nil)
  :bind
  ("C-=" . eshell-toggle))
(provide 'meta-eshell)
;;; meta-eshell.el ends here
