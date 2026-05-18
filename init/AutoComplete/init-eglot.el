;;; init-eglot.el --- eglot configuration            -*- lexical-binding: t; -*-

;; Copyright (C) 2022  uhuru

;; Author: uhuru <Uhuru-loutine@outlook.com>
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
(add-to-list 'elpaca-ignored-dependencies 'eglot)
(use-package sideline-flymake
  :ensure t
  :hook (flymake-mode . sideline-mode)
  :init
  (setq sideline-flymake-display-mode 'point) ; 'point to show errors only on point)
  )
(use-package sideline-eglot
  :ensure t
  :hook (eglot-mode . sideline-mode)
  :init
  (setq sideline-backends-right '(sideline-eglot)))
  
(use-package eglot :hook (eglot-mode . sideline-mode))  ; enable it when eglot is on
(use-package sideline
  :ensure t
  :hook
  (sideline-mode . flymake-mode)
  :init
  (setq sideline-backends-left-skip-current-line t   ; don't display on current line (left)
        sideline-backends-right-skip-current-line t  ; don't display on current line (right)
        sideline-order-left 'down                    ; or 'up
        sideline-order-right 'up                     ; or 'down
        sideline-format-left "%s   "                 ; format for left aligment
        sideline-format-right "   %s"                ; format for right aligment
        sideline-priority 100                        ; overlays' priority
        sideline-display-backend-name t)
  (setq sideline-backends-right '(sideline-eglot     ; `eglot'
                                  sideline-flymake   ; `eglot' uses `flymake' by default
										;sideline-blame     ; For `blamer'
										;sideline-eros
								  ))   ; For `eros'
)            ; display the backend name
(use-package eglot
  :ensure nil
  :custom
  (eglot-autoshutdown t)  ;; shutdown language server after closing last file
  (eglot-confirm-server-initiated-edits nil)  ;; allow edits without confirmation
  )
;;always init manually
(provide 'init-eglot)
;;; init-eglot.el ends here
