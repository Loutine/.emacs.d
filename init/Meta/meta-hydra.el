;;; meta-hydra.el --- hydra configuration            -*- lexical-binding: t; -*-

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

(use-package hydra
  :ensure t
  :after info
  :init
  (defhydra hydra-info-menu (:hint nil :exit t)
    "
^Search^              ^Navigation^          ^Inside Node^      ^Cross Ref^
^^^^^^---------------------------------------------------------------------
_i_: Index             _u_: Up               _b_  : Begin       _f_: Follow
_,_: Index Next        _d_: Info Directory   _e_  : End         _l_: Move Back
_s_: String            _n_: Next Node        _SPC_: Forward     _r_: Move Forward
_S_: Case Sensitively  _p_: Previous Node    _DEL_: Backward    _L_: Visited Node
_m_: menu              _<_: Top Node
^ ^                    _>_: Final Node
^ ^                    _T_: Toc
^ ^ ^ ^      \"Read, and be patient.\"
"
    ("i" Info-index)
    ("," inf-index-next)
    ("s" Info-search)
    ("S" Info-search-case-sensitively)
    ("u" Info-up)
    ("T" Info-toc)
    ("d" Info-directory)
    ("n" Info-next)
    ("p" Info-previos)
    ("b" begining-of-buffer)
    ("e" end-of-buffer)
    ("SPC" Info-scroll-up)
    ("DEL" Info-scrow-down)
    ("<" Info-top-node)
    (">" Info-final-node)
    ("f" Info-follow-reference)
    ("l" Info-history-back)
    ("r" Info-history-forward)
    ("L" Info-history)
    ("m" Info-menu)
    )
  :config
  (define-key Info-mode-map "a" 'hydra-info-menu/body))
(provide 'meta-hydra)
;;; meta-hydra.el ends here
