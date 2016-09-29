(add-hook
 'makefile-mode-hook
 '(lambda ()
    (subword-mode 1)))

(provide 'init-make-mode)
