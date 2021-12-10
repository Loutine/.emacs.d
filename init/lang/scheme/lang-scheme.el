;;; package --- Summary
;;; Commentary
;;; Code:
(require 'cl-lib)
(require 'scheme)
(require 'comint)
(require 'cmuscheme)
(setq scheme-program-name "scheme")         ;; 如果用 Petite 就改成 "petite"


;; bypass the interactive question and start the default interpreter
;;(defun scheme-proc ()
;;  "Return the current Scheme process, starting one if necessary."
;;  (unless (and scheme-buffer
;;               (get-buffer scheme-buffer)
;;               (comint-check-proc scheme-buffer))
;;    (save-window-excursion
;;      (run-scheme scheme-program-name)))
;;  (or (scheme-get-process)
;;      (error "No current process. See variable `scheme-buffer'")))
;;
(defun scheme-split-window ()
  (cond
   ((= 1 (count-windows))
    (delete-other-windows)
    (split-window-vertically (floor (* 0.68 (window-height))))
    (other-window 1)
    (switch-to-buffer "*scheme*")
    (other-window 1))
   ((not (cl-find "*scheme*"
               (mapcar (lambda (w) (buffer-name (window-buffer w)))
                       (window-list))
               :test 'equal))
    (other-window 1)
    (switch-to-buffer "*scheme*")
    (other-window -1))))

(defun scheme-send-buffer ()
  (interactive)
  (scheme-send-region
   (goto-char (point-min)) (goto-char (point-max))))

(defun scheme-load-current-file ()
  (interactive)
  (comint-send-string (scheme-proc) (concat "(load \"" buffer-file-name "\")" ))
  (comint-send-string (scheme-proc) "\n"))

(defun scheme-send-last-sexp-split-window ()
  (interactive)
  (scheme-split-window)
  (scheme-send-last-sexp))


(defun scheme-send-definition-split-window ()
  (interactive)
  (scheme-split-window)
  (scheme-send-definition))

(defun scheme-load-current-file-split-window ()
  (interactive)
  (scheme-split-window)
  (scheme-load-current-file))

(add-hook 'scheme-mode-hook
  (lambda ()
    (paredit-mode 1)
    (define-key scheme-mode-map (kbd "<f5>") 'scheme-send-last-sexp-split-window)
    (define-key scheme-mode-map (kbd "<f6>") 'scheme-send-definition-split-window)
    (define-key scheme-mode-map (kbd "<f7>") 'scheme-load-current-file-split-window)))

(provide 'lang-scheme)
;; scheme-la.el ends here
