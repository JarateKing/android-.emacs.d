;; basic setup
(setq custom-file "~/.emacs.d/custom.el")
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(unless package-archive-contents (package-refresh-contents))
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

;; no start screen
(setq initial-scratch-message "")
(setq inhibit-startup-screen t)

;; toolbar/keyboard settings
(menu-bar-mode t)
(modifier-bar-mode t)
(tool-bar-mode t)
(customize-set-variable 'tool-bar-position 'bottom)
(customize-set-variable 'touch-screen-display-keyboard t)
