;;; package --- Summary:
;;; Commentary:
;;; Code:
(tool-bar-mode 0);;工具栏
(menu-bar-mode 1);;菜单栏
(scroll-bar-mode 0);;滚动栏
(global-hl-line-mode 1) ;;当前行高亮
;(global-linum-mode 0);;行数显示
(fringe-mode '(20 . 2));;修饰栏大小
(backup-by-copying t) ; 自动备份

(backup-directory-alist '(("." . "~/.em_backup"))) ; 自动备份在目录"~/.em_backup"下

(delete-old-versions t) ; 自动删除旧的备份文件

(kept-new-versions 3) ; 保留最近的3个备份文件

(kept-old-versions 1) ; 保留最早的1个备份文件

(version-control t) ; 多次备份
(provide 'auto-save)
;;; auto-save ends here
