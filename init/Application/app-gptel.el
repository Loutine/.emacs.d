;;; app-gptel.el --- llm config                      -*- lexical-binding: t; -*-

;; Copyright (C) 2026  Uhuru

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

(use-package gptel
  :ensure t
  :init
  (add-hook 'gptel-post-stream-hook 'gptel-auto-scroll)
  (setq gptel-model 'deepseek-reasoner
		gptel-backend (gptel-make-deepseek "DeepSeek" :stream t :key (shell-command-to-string "secret-tool lookup Title \"deepseek-api-key\""))
))

(provide 'app-gptel)
;;; app-gptel.el ends here
