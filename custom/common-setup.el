;; Fix the shell env variables
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; Hide the spash screen
(setq inhibit-startup-message t inhibit-startup-echo-area-message t)

;; Turn off the menu tool and scroll bars
;; (menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; When emacs splits windows eg. compile window, do it horizontally
(setq split-height-threshold 0)
(setq split-width-threshold nil)

;; Prefer utf-8 encoding
(prefer-coding-system 'utf-8)

;; make yes or no answers for emacs y or n
(defalias 'yes-or-no-p 'y-or-n-p)

;; Show line numbers
;; (global-linum-mode 1)

;; Show column-number in the mode line
(column-number-mode 1)

;; Highlight the current line
(global-hl-line-mode 1)

;; Do not use tabs for indentation
(setq standard-indent 2)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq indent-line-function 'insert-tab)

;; Do not wrap lines
(setq-default truncate-lines 1)

;; replace highlighted text with what I type
(delete-selection-mode t)

;; scroll by a single line
;;(setq scroll-step 1)
;; trying out the smooth-scrolling package now
(setq smooth-scroll-margin 3)

;; Highlight incremental search
(setq search-highlight t)
(transient-mark-mode t)

(global-undo-tree-mode)

(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(setq coffee-tab-width 2)
(setq css-indent-offset 2)

;; scroll to the first error in the compile window
(setq compilation-scroll-output 'first-error)
