(require-package 'web-mode)
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;; Set HTML offset indentation.
(setq web-mode-markup-indent-offset 2)

(provide 'init-web-mode)
