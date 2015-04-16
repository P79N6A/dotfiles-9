(require-package 'auto-complete)
(require 'auto-complete-config)
(setq-default ac-auto-start 3)
(set-default 'ac-sources
             '(ac-source-imenu
               ac-source-dictionary
               ac-source-words-in-buffer
               ac-source-words-in-same-mode-buffers
               ac-source-words-in-all-buffer))
(setq popup-use-optimized-column-computation nil)
(setq ac-use-quick-help nil)
(ac-linum-workaround)
(ac-config-default)

(provide 'init-auto-complete)
