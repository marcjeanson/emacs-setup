(require 'auto-complete-config)
(ac-config-default)
(setq ac-ignore-case nil)
(add-to-list 'ac-modes 'enh-ruby-mode)
(add-to-list 'ac-modes 'nxml-mode)
(add-to-list 'ac-modes 'slim-mode)

(add-hook 'robe-mode-hook 'ac-robe-setup)
