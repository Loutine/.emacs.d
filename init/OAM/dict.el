(use-package bing-dict
  :bind
  ("C-c d" . bing-dict-brief)
  :config
  (setq bing-dict-show-thesaurus 'both
	bing-dict-pronunciation-style 'uk
	bing-dict-vocabulary-save t)
  )
(provide 'dict)
