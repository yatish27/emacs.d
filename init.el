;; init.el

;; configure load path
(setq load-path (cons "~/.emacs.d" load-path))

(setq root-dir "~/.emacs.d")

(setq configs-dir (concat root-dir "/configs"))
(add-to-list 'load-path configs-dir)

(setq hooks-dir (concat root-dir "/hooks"))
(add-to-list 'load-path hooks-dir)

(setq logs-dir (concat root-dir "/logs"))

(require 'auto-package)


(defvar my-packages '(melpa

                      ;; themes
		      monokai-theme
                      ;; clojure
    
                      ;; ruby
		      ruby-tools
		      inf-ruby
		      ruby-compilation
		      ruby-electric
                      ;; js

                      ;; markup

                      ;; flymake
		      flymake-ruby
                     
                      ;; editing
                      auto-complete
                      smooth-scrolling
                      browse-kill-ring
                      undo-tree
                      yasnippet
		      octomacs

                      ;; utils
                      magit
                      melpa
                      todochiku
                      multiple-cursors
                      paredit
                      multi-term
                      rings
                      rcirc
                      )
  "A list of packages to ensure are installed at launch.")

(auto-package-install my-packages)

;; Themes
(load-theme 'monokai t)

;; RubyHooks
(require 'flymake-ruby)
(add-hook 'ruby-mode-hook 'flymake-ruby-load)

;;Util Hooks
(require 'auto-complete)
(global-auto-complete-mode t)

;; splash screen
(setq inhibit-splash-screen t)

;; Octopress Blog
 (require 'octomacs)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("1f3304214265481c56341bcee387ef1abb684e4efbccebca0e120be7b1a13589" "65f7173faa84a97044d743d4bab115a6ab52bc6e6dc47612e31e4dbc39ebb1ae" "ea0c5df0f067d2e3c0f048c1f8795af7b873f5014837feb0a7c8317f34417b04" "8960cf2615609abea1bc869b11e6bbc6e93826b1e0a070ed59367882e9099250" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Everywhere Ido mode 
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

(setq ido-show-dot-for-dired t) 
(ido-ubiquitous-mode)
(setq ido-ubiquitous-enable-compatibility nil) 

(setq make-backup-files nil) ; stop creating ~ files


