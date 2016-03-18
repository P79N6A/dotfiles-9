(add-hook
 'css-mode-hook
 '(lambda ()
    (turn-on-auto-fill)
    (define-key css-mode-map [(return)] 'newline-and-indent)))

(provide 'init-css)
