(autoload
  'haskell-mode
  "haskell-mode"
  "Major mode for the Haskell programming language."
  t)

;; Use haskell-mode for .hs files.
(add-to-list 'auto-mode-alist '("\\.hs\\'" . haskell-mode))

(add-hook 
 'haskell-mode-hook
 '(lambda ()
    (turn-on-haskell-indent)
    (turn-on-haskell-doc-mode)))

(provide 'init-haskell)
