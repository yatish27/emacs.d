(autoload 'ruby-mode "ruby-mode" nil t)

;; Custom file types to which Ruby mode is applied
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))

(add-hook 'ruby-mode-hook
          (lambda () ('rvm-activate-corresponding-ruby)))

;; Ruby mode hook
(eval-after-load 'ruby-mode
  '(progn
     (setq ruby-use-encoding-map nil)
     (add-hook 'ruby-mode-hook 'inf-ruby-keys)
     (define-key ruby-mode-map (kbd "RET") 'reindent-then-newline-and-indent)
     (define-key ruby-mode-map (kbd "C-M-h") 'backward-kill-word)
     (define-key ruby-mode-map (kbd "C-c l") "lambda")))

(require 'flymake-ruby)
(add-hook 'ruby-mode-hook 'flymake-ruby-load)

(defun ruby-insert-end () 
  "Insert \"end\" at point and reindent current line." 
  (interactive) 
  (insert "end") 
  (ruby-indent-line t) 
  (end-of-line)) 

(require 'ruby-electric)
(add-hook 'ruby-mode-hook 'ruby-electric-mode)

(require 'ruby-compilation)     
(autoload 'inf-ruby "inf-ruby" "Run an inferior Ruby process" t)
(add-hook 'ruby-mode-hook 'inf-ruby-minor-mode)
(define-key ruby-mode-map (kbd "C-x C-t") 'ruby-send-region)

(add-hook 'ruby-mode-hook 'robe-mode)    

(autoload 'dash-at-point "dash-at-point"
	"Search the word at point with Dash." t nil)
(global-set-key "\C-cd" 'dash-at-point)

(add-hook 'ruby-mode-hook
          (lambda () (setq dash-at-point-docset "ruby")))

(add-hook 'ruby-mode-hook 'zossima-mode)

(require 'rhtml-mode)


;; seeing-is-believing setup
(defun seeing-is-believing ()
  "Replace the current region (or the whole buffer, if none) with the output
of seeing_is_believing."
  (interactive)
  (let ((beg (if (region-active-p) (region-beginning) (point-min)))
        (end (if (region-active-p) (region-end) (point-max))))
    (shell-command-on-region beg end "seeing_is_believing" nil 'replace)))

