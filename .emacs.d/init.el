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

;; cursor
(defun contextual-cursor ()
  "Set cursor based on minor mode context"
  (cond
   (buffer-read-only
    (setq cursor-type 'hbar))
   (overwrite-mode
    (setq cursor-type 'hollow))
   (t
    (setq cursor-type 'bar))))
(add-hook 'post-command-hook 'contextual-cursor)
