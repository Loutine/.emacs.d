(use-package ivy
  :ensure
  :init
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) ")
  (setq enable-recursive-minibuffers t)
  (setq ivy-initial-inputs-alist nil)
  (setq ivy-re-builders-alist
      '((swiper . ivy--regex-plus)
	(t . ivy--regex-fuzzy))) ;; enable fuzzy searching everywhere except for Swiper
)
(provide 'ivy_config)


