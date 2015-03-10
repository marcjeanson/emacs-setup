(global-company-mode t)
(push 'company-robe company-backends)

(global-set-key (kbd "M-p") 'company-complete)
