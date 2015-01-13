(require 'linum-relative)
;; once you require this it turns it on. I want it off by default but togged on when evil is enabled
(linum-relative-toggle)
(add-hook 'evil-mode-hook 'linum-relative-toggle)

(global-evil-surround-mode 1)
