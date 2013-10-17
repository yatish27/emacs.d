;; Themes
(load-theme 'monokai t)
(require 'auto-complete)
(global-auto-complete-mode t)

;; splash screen
(setq inhibit-splash-screen t)

(global-font-lock-mode 1)

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

(setq ido-show-dot-for-dired t) 
(ido-ubiquitous-mode)
(setq ido-ubiquitous-enable-compatibility nil) 

;; stop creating ~ files
(setq make-backup-files nil)

(require 'maxframe)
(add-hook 'window-setup-hook 'maximize-frame t)

;; switch between windows
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <left>") 'windmove-left)
;; project explorer
(require 'dirtree)

(provide 'pps-settings)
