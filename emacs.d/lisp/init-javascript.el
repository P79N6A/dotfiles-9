(add-hook
 'js-mode-hook
 '(lambda ()
    (subword-mode 1)
    (turn-on-auto-fill)
    (define-key js-mode-map [(return)] 'newline-and-indent)))

(add-to-list
 'auto-insert-alist
 '(("\\.\\(js\\)\\'" . "Javascript source skeleton")
   . ["template.js" js-mode my/autoinsert-yas-expand]))

(provide 'init-javascript)
