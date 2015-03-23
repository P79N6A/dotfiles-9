(add-hook
 'java-mode-hook
 '(lambda ()
    (c-set-style "java")
    (subword-mode 1)))

(provide 'init-java)
