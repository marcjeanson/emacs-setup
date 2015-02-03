(require 'cask "/usr/local/share/emacs/site-lisp/cask.el")
(cask-initialize)

(require 'pallet)
(pallet-mode t)

(add-to-list 'load-path "~/.emacs.d/custom")

(load "common-setup.el")

(load "ace-jump-setup.el")
(load "auto-complete-setup.el")
(load "backups-setup.el")
(load "evil-setup.el")
(load "helm-setup.el")
(load "magit-setup.el")
(load "neotree-setup.el")
(load "projectile-setup.el")
(load "ruby-setup.el")
(load "smartparens-setup.el")
(load "web-mode-setup.el")
;;(load "yasnippet-setup.el")
;; (load "ido-setup.el")

(load "key-bindings.el")

(set-default-font "Inconsolata 14")
(load-theme 'afternoon t)

;; stuff no available as packages
(add-to-list 'load-path "~/.emacs.d/vendor/bundler.el")
(require 'bundler)
(put 'downcase-region 'disabled nil)
