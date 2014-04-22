;; Glabal settings
;; Themes
(load-theme 'cyberpunk t)
;;Need to Change this for debian 
(setq default-directory "/home/yatish")

(set-default-font "monaco 10")
(require 'textmate)
(textmate-mode)

(require 'rvm)
(rvm-use-default)

(require 'yasnippet)
(yas-global-mode 1)

(require 'feature-mode)
(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))

(require 'scss-mode)
(setq scss-indent-offset 2)
;;(require 'auto-complete)
;;(global-auto-complete-mode t)

(custom-set-variables '(coffee-tab-width 2))

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
(auto-complete-mode 1)
;;; set the trigger key so that it can work together with yasnippet on tab key,
;;; if the word exists in yasnippet, pressing tab will cause yasnippet to
;;; activate, otherwise, auto-complete will
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")

;;(ac-config-default)
(setq ac-ignore-case nil)
;;(add-to-list 'ac-modes 'enh-ruby-mode)
(add-to-list 'ac-modes 'web-mode)

(require 'tidy)

;; splash screen
(setq inhibit-splash-screen t)

;; font lock
(global-font-lock-mode 1)

;;
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)
(setq ido-show-dot-for-dired t)
(ido-vertical-mode)
(require 'smex) 
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands) 
;;(ido-ubiquitous-mode)
;;(setq ido-ubiquitous-enable-compatibility nil) 

;; stop creating ~ files
(setq make-backup-files nil)

;; Open in full size
(require 'maxframe)
(add-hook 'window-setup-hook 'maximize-frame t)

;; switch between windows key bindings#TODO need proper keybindings
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <left>") 'windmove-left)

;; Project Explorer(vendor)
(require 'dirtree)

;;Projectile Configs
(require 'projectile)
(require 'grizzl)
(projectile-global-mode)
;;(setq projectile-enable-caching t)
(setq projectile-completion-system 'grizzl)
;; Press Command-p for fuzzy find in project
(global-set-key (kbd "s-p") 'projectile-find-file)
;; Press Command-b for fuzzy switch buffer
(global-set-key (kbd "s-b") 'projectile-switch-to-buffer)

(provide 'pps-settings)
