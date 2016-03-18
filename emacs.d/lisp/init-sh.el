(add-hook
 'sh-mode-hook
 '(lambda ()
    (define-key sh-mode-map [(return)] 'newline-and-indent)))

(provide 'init-sh)
