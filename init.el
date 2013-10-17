;; init.el

;; configure load path
(setq load-path (cons "~/.emacs.d" load-path))
(setq root-dir "~/.emacs.d")
(setq configs-dir (concat root-dir "/configs"))
(setq hooks-dir (concat root-dir "/hooks"))
(setq logs-dir (concat root-dir "/logs"))
(setq vendor-dir (concat root-dir "/vendor"))

;; Load configs
(add-to-list 'load-path configs-dir)
(add-to-list 'load-path hooks-dir)
(add-to-list 'load-path vendor-dir)


(require 'pps-packages)
(require 'pps-settings)

;; Load all hooks
(mapcar 'load (directory-files hooks-dir t "\\.el\\'"))







