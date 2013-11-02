;; init.el
;; load and install require packages
(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)
;; configure load path
(setq load-path (cons "~/.emacs.d" load-path))
(setq root-dir "~/.emacs.d")
(setq configs-dir (concat root-dir "/configs"))
;; give names
(setq logs-dir (concat root-dir "/logs"))
(setq vendor-dir (concat root-dir "/vendor"))

;; Load configs
(add-to-list 'load-path configs-dir)
(add-to-list 'load-path vendor-dir)

;; add *.el as per custom requirements
(require 'pps-settings)
(load "ruby.el")
(load "yaml.el")
(load "markdown.el")








