(add-hook
 'perl-mode-hook
 '(lambda ()
    (define-key perl-mode-map [(return)] 'newline-and-indent)))

;; Define auto-insert skeletons for perl source code.
(add-to-list
 'auto-insert-alist
 '(("\\.\\(pl\\)\\'" . "Perl source skeleton")
   . ["template.pl" perl-mode my/autoinsert-yas-expand]))

(provide 'init-perl)
