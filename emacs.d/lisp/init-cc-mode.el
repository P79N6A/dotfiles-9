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

;; Define auto insert skeletons for C++ header and source files.
(add-to-list
 'auto-insert-alist
 '(("\\.\\([Hh]\\|hh\\|hpp\\)\\'" . "C/C++ header skeleton")
   . ["template.h" c++-mode my/autoinsert-yas-expand]))
(add-to-list
 'auto-insert-alist
 '(("\\.\\(cc\\|cpp\\)\\'" . "C/C++ source skeleton")
   . ["template.cc" c++-mode my/autoinsert-yas-expand]))

(provide 'init-cc-mode)
