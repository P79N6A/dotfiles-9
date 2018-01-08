(add-hook
 'c-mode-common-hook
 '(lambda ()
    (subword-mode 1)
    (turn-on-auto-fill)
    (c-toggle-auto-newline -1)
    (define-key c-mode-base-map [(return)] 'newline-and-indent)
    (define-key c-mode-base-map (kbd "M-q") 'c-fill-paragraph)))

(require 'spock-c-style)
(add-hook 'c-mode-common-hook 'spock-set-c-style)

;; Override the default setting to use C++-mode for .h files.
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(provide 'init-cc-mode)
