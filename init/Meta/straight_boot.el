(require 'socks)
(defun proxy-socks-show ()
  "Show SOCKS proxy."
  (interactive)
  (when (fboundp 'cadddr)
    (if (bound-and-true-p socks-noproxy)
        (message "Current SOCKS%d proxy is %s:%d"
                 (cadddr socks-server) (cadr socks-server) (caddr socks-server))
      (message "No SOCKS proxy"))))

(defun proxy-socks-enable ()
  "Enable SOCKS proxy."
  (interactive)
  (require 'socks)
  (setq
   url-gateway-method 'socks
   socks-noproxy '("localhost")
   socks-server '("Default server" "127.0.0.1" 1089 5)
   socks-override-functions t)
  (proxy-socks-show))
(defun proxy-socks-disable ()
  "Disable SOCKS proxy."
  (interactive)
  (require 'socks)
  (setq url-gateway-method 'native
        socks-noproxy nil
	socks-override-functions nil)
  (proxy-socks-show))

(defun proxy-socks-toggle ()
  "Toggle SOCKS proxy."
  (interactive)
  (require 'socks)
  (if (bound-and-true-p socks-noproxy)
      (proxy-socks-disable)
    (proxy-socks-enable)))

(tool-bar-add-item "connect" 'proxy-socks-toggle
		   'proxy-socks-toggle
		   :help   "Toggle Proxy setting")
(defvar bootstrap-version)
(setq straight-check-for-modifications nil)
(setq straight-build-dir (concat "build-" emacs-version))
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))
(setq package-enable-at-startup t)
(straight-use-package 'use-package)

(setq straight-use-package-by-default t
      use-package-always-defer nil)

(use-package benchmark-init
  :disabled t
  :demand
  :config
  (add-hook 'after-init-hook 'benchmark-init/deactivate))
(use-package exec-path-from-shell :demand)
;; add path to emacs
(when (daemonp)
    (exec-path-from-shell-initialize))
(provide 'straight_boot)
