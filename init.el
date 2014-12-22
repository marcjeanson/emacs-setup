(require 'cask "/usr/local/share/emacs/site-lisp/cask.el")
(cask-initialize)

(require 'pallet)
(pallet-mode t)

(add-to-list 'load-path "~/.emacs.d/custom")

(load "common-setup.el")
(load "backups-setup.el")
(load "ruby-setup.el")
(load "smartparens-config.el")
;; (load "helm-setup.el")
(load "key-bindings.el")
