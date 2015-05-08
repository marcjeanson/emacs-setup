(require 'chruby)
(chruby "ruby-2.1.6")

;; Enhanced Ruby Mode config
(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . enh-ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))
(add-hook 'enh-ruby-mode-hook 'inf-ruby-minor-mode)

(add-hook 'enh-ruby-mode-hook 'robe-mode)

(setq enh-ruby-bounce-deep-indent t)
(setq enh-ruby-deep-indent-paren t)
(setq enh-ruby-hanging-brace-deep-indent-level 1)
(setq enh-ruby-hanging-brace-indent-level 2)
(setq enh-ruby-hanging-indent-level 2)
(setq enh-ruby-hanging-paren-deep-indent-level 0)
(setq enh-ruby-hanging-paren-indent-level 2)
(setq enh-ruby-indent-level 2)

(setq enh-ruby-deep-indent-paren nil)
;; (setq enh-ruby-bounce-deep-indent t)
(setq enh-ruby-hanging-brace-indent-level 0)

(defadvice rspec-compile (around rspec-compile-around)
  "Use BASH shell for running the specs because of ZSH issues."
  (let ((shell-file-name "/bin/bash"))
    ad-do-it))
(ad-activate 'rspec-compile)

(setq rspec-use-rake-when-possible nil)

(eval-after-load 'rspec-mode
  '(progn
     (rspec-install-snippets)
     (define-key rspec-mode-map (kbd "s-r") 'rspec-verify)
     (define-key rspec-mode-map (kbd "s-s") 'rspec-verify-single)
     (define-key rspec-mode-map (kbd "s-a") 'rspec-verify-all)))

;; pry integration with rspec-mode
(add-hook 'after-init-hook 'inf-ruby-switch-setup)

;; fix indenting
(setq ruby-deep-indent-paren nil)
