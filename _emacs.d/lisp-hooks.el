(defun go-lisp ()
  (enable-paredit-mode)
  (rainbow-delimiters-mode 1))

(defvar go-lisp-hooks
  '(lisp-mode-hook clojure-mode-hook emacs-lisp-mode-hook))

(dolist (hook go-lisp-hooks)
  (add-hook hook 'go-lisp))

