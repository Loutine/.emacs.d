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
  :after lsp-mode
  :ensure t
  :mode ("\\.nix\\'" "\\.nix.in\\'")
  :hook
  (nix-mode . lsp-deferred)
  :custom
  (lsp-disabled-clients '((nix-mode . nix-nil))) 
  :config
  (setq lsp-nix-nixd-server-path "nixd"
		lsp-nix-nixd-formatting-command [ "nixfmt" ]
		lsp-nix-nixd-nixpkgs-expr "import <nixpkgs> { }"
		lsp-nix-nixd-nixos-options-expr "(builtins.getFlake \"/home/nb/nixos\").nixosConfigurations.mnd.options"
		lsp-nix-nixd-home-manager-options-expr "(builtins.getFlake \"/home/nb/nixos\").homeConfigurations.\"nb@mnd\".options"))

(use-package nix-drv-mode
  :ensure nil
  :after nix-mode
  :mode "\\.drv\\'")
(use-package nix-shell
  :ensure nil
  :after nix-mode
  :commands (nix-shell-unpack nix-shell-configure nix-shell-build))
(use-package nix-repl
  :ensure nil
  :after nix-mode
  :commands (nix-repl))
(provide 'meta-nix)
;;; meta-nix.el ends here
