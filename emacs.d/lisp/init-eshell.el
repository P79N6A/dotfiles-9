(add-hook
 'eshell-mode-hook
 '(lambda ()
    (setq comint-prompt-regexp "^[^#$%>\n]*[#$] ")))

(provide 'init-eshell)
