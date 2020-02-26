;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package python
  :hook
  (python-mode . electric-pair-mode)
  :init
  (require 'python)
  (add-to-list 'python-shell-extra-pythonpaths "/home/loutine/miniconda3/bin/python"))
(provide 'python-la)
;;; python-la.el ends here
  
