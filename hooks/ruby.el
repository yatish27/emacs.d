(autoload 'ruby-mode "ruby-mode" nil t)

;; Custom file types to which Ruby mode is applied
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))

;; Ruby mode hook
(add-hook 'ruby-mode-hook '(lambda ()
                             (setq ruby-deep-arglist t)
                             (setq ruby-deep-indent-paren nil)
                             (setq c-tab-always-indent nil)
                             (require 'inf-ruby)
                             (require 'ruby-compilation)))


(require 'flymake-ruby)
(add-hook 'ruby-mode-hook 'flymake-ruby-load)
