(add-hook
 'text-mode-hook
 '(lambda ()
    (subword-mode 1)
    (turn-on-auto-fill)
    (setq tab-width 4)))

(provide 'init-text)
