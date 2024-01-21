;;; meta-evil.el --- evil keybind configuration      -*- lexical-binding: t; -*-

;; Copyright (C) 2023  Uhuru

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

(use-package evil
  :elpaca t
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  :config
  (defun evil-comment-paste ()
    (interactive)
    (let ((now-point (point)))
      (evil-paste-after 1)
      (comment-region now-point (+ (point) 1))))

  (evil-global-set-key 'normal (kbd "gy") 'evil-comment-paste)
  (evil-mode 1)
)
(use-package evil-mc
  :elpaca t
  :config
  (global-evil-mc-mode 1))
(use-package evil-collection
  :after evil
  :elpaca t
  :config
  (evil-collection-init)
  )
(provide 'meta-evil)
;;; meta-evil.el ends here
