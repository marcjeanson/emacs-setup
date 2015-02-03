(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)
(add-hook 'projectile-mode-hook 'projectile-rails-on)

(defun projectile-helm-ag ()
  (interactive)
  (helm-ag (projectile-project-root)))

(define-key projectile-mode-map [?\s-f] 'projectile-helm-ag)
