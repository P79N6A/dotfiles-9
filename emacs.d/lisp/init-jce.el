(autoload
  'jce-mode
  "jce-mode"
  "Major mode for TAF specification language."
  t)

(require-package 'fill-column-indicator)
(require 'fill-column-indicator)
(add-hook 'jce-mode-hook
          '(lambda ()
             (fci-mode t)))

(add-to-list 'auto-mode-alist '("\\.jce\\'" . jce-mode))

;; Use HTML mode for .wsp files.
(add-to-list 'auto-mode-alist '("\\.wsp\\'" . html-mode))

(provide 'init-jce)
