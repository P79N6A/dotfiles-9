(add-hook
 'sql-mode-hook
 '(lambda ()
    (turn-on-auto-fill)
    (define-key sql-mode-map (kbd "C-c C-c") 'comment-region)))

(provide 'init-sql)
