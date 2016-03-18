(add-hook
 'html-mode-hook
 '(lambda ()
    (turn-off-auto-fill)
    (define-key html-mode-map [(return)] 'newline-and-indent)))

(add-hook
 'xml-mode-hook
 '(lambda ()
    (turn-off-auto-fill)
    (define-key xml-mode-map [(return)] 'newline-and-indent)))

(provide 'init-html)
