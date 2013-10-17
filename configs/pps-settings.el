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

(provide 'pps-settings)
