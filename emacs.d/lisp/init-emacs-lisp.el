(require-package 'fill-column-indicator)
(require 'fill-column-indicator)
(add-hook
 'emacs-lisp-mode-hook
 '(lambda ()
    (turn-on-auto-fill)
    (fci-mode t)
    (define-key emacs-lisp-mode-map (kbd "C-c C-c") 'comment-region)
    (define-key emacs-lisp-mode-map [(return)] 'newline-and-indent)))

(provide 'init-emacs-lisp)
