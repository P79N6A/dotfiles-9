;; Enable `auto-insert-mode'.
(auto-insert-mode)
(custom-set-variables '(auto-insert-directory "~/.emacs.d/auto-insert/"))

(require 'yasnippet)
(defun autoinsert-yas-expand()
  "Replace text in yasnippet template."
  (yas-expand-snippet (buffer-string) (point-min) (point-max)))

;; Define auto insert skeletons for C++ header and source files.
(add-to-list
 'auto-insert-alist
 '(("\\.\\([Hh]\\|hh\\|hpp\\)\\'" . "C/C++ header skeleton")
   . ["template.h" c++-mode autoinsert-yas-expand]))
(add-to-list
 'auto-insert-alist
 '(("\\.\\(cc\\|cpp\\)\\'" . "C/C++ source skeleton")
   . ["template.cc" c++-mode autoinsert-yas-expand]))

(provide 'init-auto-insert)
