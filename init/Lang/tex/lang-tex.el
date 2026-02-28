(require 'auctex)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq TeX-master nil)
(setq TeX-view-program-selection '((output-pdf "PDF Tools"))
      TeX-source-correlate-start-server t)
(add-hook 'TeX-after-compilation-finished-functions
           #'TeX-revert-document-buffer)
(provide 'lang-tex)
