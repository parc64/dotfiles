(custom-set-variables
  '(speedbar-directory-button-trim-method (quote trim))
  '(speedbar-hide-button-brackets-flag nil)
  '(speedbar-show-unknown-files t))

(custom-set-faces
'(default ((t (:slant normal :weight normal :height 180 :width normal :family "Droid Sans Mono")))))


(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(setq prelude-whitespace nil)
(disable-theme 'zenburn)
(load-theme 'adwaita t)
(global-hl-line-mode 1)
(setq standard-indent 2)
(setq scroll-step 1)
(setq-default indent-tabs-mode nil)
(setq make-backup-files nil)
(line-number-mode 1)
(setq ring-bell-function 'ignore)
