(use-package bing-dict
  :bind
  ("C-c c" . bing-dict-brief)
  :config
  (setq bing-dict-show-thesaurus 'both
	bing-dict-pronunciation-style 'uk
	bing-dict-vocabulary-save t)
  )

(use-package ispell
  :elpaca nil
  :init
  (setenv "DICPATH" "/usr/share/hunspell/")
  :config
  ;; (add-to-list 'ispell-local-dictionary-alist '("english-hunspell"
  ;; 						"[[:alpha:]]"
  ;; 						"[^[:alpha:]]"
  ;; 						"[']"
  ;; 						t
  ;; 						("-d" "en_US")
  ;; 						nil
  ;; 						iso-8859-1))

  (setq ispell-program-name "hunspell"          ; Use hunspell to correct mistakes
	)  
  )
(provide 'dict)
