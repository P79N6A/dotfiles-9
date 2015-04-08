(require-package 'color-theme)
(require-package 'color-theme-solarized)
(require 'color-theme)
(if (display-graphic-p)
    (eval-after-load "color-theme"
      '(progn
         (color-theme-initialize)
         (color-theme-solarized-dark))))

(provide 'init-theme)
