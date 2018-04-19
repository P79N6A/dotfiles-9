(require 'python)

(add-hook
  'python-mode-hook
  '(lambda ()
     (subword-mode 1)
     (define-key python-mode-map [(return)] 'newline-and-indent)))

(add-to-list 'auto-mode-alist '("[/]BUILD\\'" . python-mode))

(provide 'init-python)
