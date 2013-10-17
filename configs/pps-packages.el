(require 'auto-package)

 ;; "A list of packages to ensure are installed at launch."
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
		      yaml-mode
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

(provide 'pps-packages)
