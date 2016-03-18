(require-package 'fill-column-indicator)
(require 'fill-column-indicator)
(add-hook
 'js-mode-hook
 '(lambda ()
    (subword-mode 1)
    (turn-on-auto-fill)
    (fci-mode t)
    (define-key js-mode-map [(return)] 'newline-and-indent)))

(provide 'init-javascript)
