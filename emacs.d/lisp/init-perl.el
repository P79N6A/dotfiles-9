(add-hook
 'perl-mode-hook
 '(lambda ()
    (define-key perl-mode-map [(return)] 'newline-and-indent)))

(provide 'init-perl)
