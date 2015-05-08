(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.rhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))

(setq-default web-mode-markup-indent-offset tab-width)
(setq-default web-mode-css-indent-offset tab-width)
(setq-default web-mode-code-indent-offset tab-width)
(setq-default web-mode-sql-indent-offset tab-width)
