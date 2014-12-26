;; (require 'grizzl)
;; (projectile-global-mode)
;; (setq projectile-enable-caching t)
;; (setq projectile-completion-system 'grizzl)

(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)
(add-hook 'projectile-mode-hook 'projectile-rails-on)
