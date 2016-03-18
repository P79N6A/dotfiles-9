(autoload
  'php-mode
  "php-mode"
  "Major mode for PHP."
  t)
(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))

(provide 'init-php)
