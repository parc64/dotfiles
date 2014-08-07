(when (member "Droid Sans Mono-17" (font-family-list))
  (set-face-attribute 'default nil :font "Droid Sans Mono-17"))
  (set-face-attribute 'default nil :height 160)

(setq ring-bell-function 'ignore)
(scroll-bar-mode -1)

(setq prelude-whitespace nil)

(setq sr-speedbar-right-side nil)
(setq sr-speedbar-skip-other-window-p t)
(setq sr-speedbar-auto-refresh t)
(setq sr-speedbar-max-width 20)

(custom-set-variables
  '(speedbar-show-unknown-files t)
)

(global-set-key (kbd "<f2>") 'sr-speedbar-toggle)


;; (add-to-list 'load-path "/Users/jason/.emacs.d/personal/plugins/neotree")
;; (require 'neotree)
;;(global-set-key (kbd "<f2>") 'neotree-toggle)
