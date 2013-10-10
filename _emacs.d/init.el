;; UI stuff
(setq ns-use-native-fullscreen nil) ; don't use lion fullscreen
(tool-bar-mode -1)                  ; hide the toolbar

;; Miscellany
(setq
  make-backup-files nil
  auto-save-default nil)            ; backup files: not once
(setq ring-bell-function 'ignore)   ; stop beeping at me!
(setq inhibit-startup-message t)    ; don't show welcome screen

(require 'ido)
(ido-mode t)

(setq load-path (cons "~/.emacs.d" load-path))

(load "repo")
(load "theme")

;; Keybindings
(global-set-key (kbd "<s-return>") 'toggle-frame-fullscreen)
(global-set-key (kbd "s-{") 'previous-buffer)
(global-set-key (kbd "s-}") 'next-buffer)

(global-set-key (kbd "C-x f")   'find-file-in-repository)
(global-set-key (kbd "C-x C-f") 'find-file-in-repository)
(global-set-key (kbd "C-x F")   'find-file)
