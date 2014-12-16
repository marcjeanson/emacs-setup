;; Turn off the menu bar
(menu-bar-mode -1)

;; Prefer utf-8 encoding
(prefer-coding-system 'utf-8)

;; make yes or no answers for emacs y or n
(defalias 'yes-or-no-p 'y-or-n-p)

;; Show column-number in the mode line
(column-number-mode 1)

;; Do not use tabs for indentation
(setq-default indent-tabs-mode nil)

;; Do not wrap lines
(setq-default truncate-lines 1)

;; Highlight incremental search
(setq search-highlight t)
(transient-mark-mode t)
