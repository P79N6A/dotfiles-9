(add-hook
  'python-mode-hook
  '(lambda ()
     (subword-mode 1)
     (define-key python-mode-map [(return)] 'newline-and-indent)))

(provide 'init-python)
