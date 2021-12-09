(use-package org-transclusion
  :straight
  (org-transclusion :type git :host github :repo "nobiot/org-transclusion"))
  
;; (use-package popweb
;;   :straight nil
;;   ;; (:host github :repo "manateelazycat/popweb" :branch "main" :files ("*.el" "*.py" "*.js" "extension/dict/*" "extension/latex/*"))
;;   :config
;;   (require 'popweb-latex)
;;   (require 'popweb-dict-youdao)
;;   (require 'popweb-dict-bing))
(add-to-list 'load-path "~/.emacs.d/orphan/popweb") ; add popweb to
						    ; your load-path

;; LaTeX preview functionality
(add-to-list 'load-path "~/.emacs.d/orphan/popweb/extension/latex")
(require 'popweb-latex)
(add-hook 'latex-mode-hook #'popweb-latex-mode)

;; Chinese-English translation popup
(add-to-list 'load-path "~/.emacs.d/orphan/popweb/extension/dict") ;
(require 'popweb-dict-bing) ; Translation using Bing
(require 'popweb-dict-youdao) ; Translation using Youdao
(provide 'transclusion)
