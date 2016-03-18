(add-hook
 'shell-mode-hook
 '(lambda ()
    (setq comint-use-prompt-regexp 1)
    (setq comint-prompt-regexp "^[^#$%>\n]*[#$] ")))

(provide 'init-shell)
