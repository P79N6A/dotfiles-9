(require 'fill-column-indicator)
(setq fci-rule-use-dashes t)
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode 1)

(provide 'init-fci)
