(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("f0b0710b7e1260ead8f7808b3ee13c3bb38d45564e369cbe15fc6d312f0cd7a0" "cbef37d6304f12fb789f5d80c2b75ea01465e41073c30341dc84c6c0d1eb611d" "f0ea6118d1414b24c2e4babdc8e252707727e7b4ff2e791129f240a2b3093e32" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "e56f1b1c1daec5dbddc50abd00fcd00f6ce4079f4a7f66052cf16d96412a09a9" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default)))
 '(sml/shorten-directory nil)
 '(sml/shorten-modes nil)
 '(sml/theme (quote powerline)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(sml/folder ((t (:inherit sml/global :background "#383838" :foreground "dark gray" :weight normal)))))

(require 'cask "/usr/local/share/emacs/site-lisp/cask.el")
(cask-initialize)

(require 'pallet)
(pallet-mode t)

(add-to-list 'load-path "~/.emacs.d/custom")

(load "common-setup.el")

(load "ace-jump-setup.el")
(load "auto-complete-setup.el")
(load "backups-setup.el")
;;(load "company-setup.el")
(load "evil-setup.el")
(load "flycheck-setup.el")
(load "helm-setup.el")
(load "magit-setup.el")
(load "neotree-setup.el")
(load "projectile-setup.el")
(load "ruby-setup.el")
(load "smart-mode-line-setup.el")
(load "smartparens-setup.el")
(load "theme-setup.el")
(load "web-mode-setup.el")
;;(load "yasnippet-setup.el")

(load "key-bindings.el")

;; stuff not available as packages
(add-to-list 'load-path "~/.emacs.d/vendor/bundler.el")
(require 'bundler)
(put 'downcase-region 'disabled nil)
