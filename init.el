;; init.el
;; load and install require packages
(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)
;; configure load path
(setq load-path (cons "~/.emacs.d" load-path))

(setq root-dir "~/.emacs.d")
(setq configs-dir (concat root-dir "/configs"))
(setq logs-dir (concat root-dir "/logs"))
(setq vendor-dir (concat root-dir "/vendor"))
(setq yas-dir (concat root-dir "/plugins/yasnippet"))

(add-to-list 'load-path yas-dir)
(add-to-list 'load-path configs-dir)
(add-to-list 'load-path vendor-dir)
;; add *.el as per custom requirements
(require 'pps-settings)
(load "ruby.el")
(load "yaml.el")
(load "markdown.el")
(load "haml.el")
(load "coffee.el")









