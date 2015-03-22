(setq mac-option-modifier 'super)

(global-set-key (kbd "M-<return>") 'toggle-frame-fullscreen)

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x g") 'helm-do-ag)

(global-set-key (kbd "C-c SPC") 'ace-jump-mode)

(global-set-key (kbd "C-x p") 'previous-multiframe-window)

(global-set-key (kbd "s-=") 'evil-mode)

(global-set-key (kbd "<f5>") 'helm-spotify)

(global-set-key (kbd "C-x t") 'neotree-toggle)

(global-set-key (kbd "s-0") 'magit-status)
(global-set-key (kbd "s-9") 'magit-log)

(global-set-key (kbd "s-b") 'bundle-install)

(global-set-key (kbd "s-;") 'switch-window)

(global-set-key (kbd "s-<left>")  'buf-move-left)
(global-set-key (kbd "s-<right>") 'buf-move-right)
(global-set-key (kbd "s-<up>")    'buf-move-up)
(global-set-key (kbd "s-<down>")  'buf-move-down)

;; Make option-backspace kill a word too
(global-set-key (kbd "s-<backspace>") 'backward-kill-word)
