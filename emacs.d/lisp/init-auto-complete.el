(require-package 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)
(setq-default ac-expand-on-auto-complete nil
              ac-auto-start 4
              ac-candidate-limit 5
              ac-delay 0)

(setq tab-always-indent 'complete)
(set-default 'ac-sources
             '(ac-source-imenu
               ac-source-dictionary
               ac-source-words-in-buffer
               ac-source-words-in-same-mode-buffers
               ac-source-words-in-all-buffer))

(ac-linum-workaround)
(setq popup-use-optimized-column-computation nil)
(define-key ac-complete-mode-map [(return)] 'ac-expand)
(define-key ac-complete-mode-map (kbd "<tab>") 'ac-expand)

(provide 'init-auto-complete)
