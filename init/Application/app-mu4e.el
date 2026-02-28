;;; app-mu4e.el --- mu4e -- emacs mu front end       -*- lexical-binding: t; -*-

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


(use-package mu4e
  :ensure nil
  :config
  (setq mu4e-get-mail-command "mbsync -a"
	mu4e-update-interval nil
	mu4e-use-fancy-chars t)
  (setq mail-personal-alias-file (expand-file-name "~/.mailrc")
	mail-specify-envelope-from t
	message-sendmail-envelope-from 'header
	mail-envelope-from 'header)
)

(provide 'app-mu4e)
;;; app-mu4e.el ends here
