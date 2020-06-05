(use-package sdcv
  :config
  (setq sdcv-say-word-p nil)               ;say word after translation

  (setq sdcv-dictionary-data-dir "/home/loutine/.stardict/dic/") ;setup directory of stardict dictionary


  (setq sdcv-dictionary-simple-list    ;setup dictionary list for simple search
	'("朗道英汉字典5.0"
	  "stardict1.3英汉辞典"
	  "懒虫简明英汉词典"
	  "懒虫简明汉英词典"))

  (setq sdcv-dictionary-complete-list     ;setup dictionary list for complete search
	'(
	  "牛津英汉双解美化版")))
  
(provide 'sdcvdic)
