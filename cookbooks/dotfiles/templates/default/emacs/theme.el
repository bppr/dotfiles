;; Themes
(custom-set-variables
 '(custom-safe-themes
    '("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default)))

(set-face-attribute 'default nil :family "DejaVu Sans Mono for Powerline")
(set-face-attribute 'default nil :height 140)

(load-theme 'solarized-light)

(require 'powerline)
(powerline-default-theme)
