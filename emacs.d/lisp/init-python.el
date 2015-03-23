(add-hook
  'python-mode-hook
  '(lambda ()
     (subword-mode 1)
     (define-key python-mode-map [(return)] 'newline-and-indent)))
(add-to-list
 'auto-insert-alist
 '(("\\.py\\'" . "Python skeleton")
   . ["template.py" python-mode my/autoinsert-yas-expand]))

(provide 'init-python)
