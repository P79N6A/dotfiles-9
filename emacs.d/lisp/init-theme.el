;; Set up color theme.
(require-package 'color-theme)
(require-package 'color-theme-solarized)
(add-hook 'after-init-hook
          (lambda ()
            (color-theme-initialize)
            (color-theme-solarized)))
(provide 'init-theme)
