;;; meta-nix.el --- Nix & NixOS configuration        -*- lexical-binding: t; -*-

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

(use-package nix-mode
  :elpaca t
  :mode ("\\.nix\\'" "\\.nix.in\\'"))
(use-package nix-drv-mode
  :elpaca nil
  :after nix-mode
  :mode "\\.drv\\'")
(use-package nix-shell
  :elpaca nil
  :after nix-mode
  :commands (nix-shell-unpack nix-shell-configure nix-shell-build))
(use-package nix-repl
  :elpaca nil
  :after nix-mode
  :commands (nix-repl))
(provide 'meta-nix)
;;; meta-nix.el ends here
