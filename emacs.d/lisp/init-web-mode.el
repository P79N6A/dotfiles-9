(require-package 'web-mode)
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;; Set HTML offset indentation.
(setq web-mode-markup-indent-offset 2)

(require-package 'fill-column-indicator)
(require 'fill-column-indicator)
(add-hook
 'web-mode-hook
 '(lambda ()
    (fci-mode t)))

(provide 'init-web-mode)
