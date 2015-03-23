(require 'package)
(package-initialize)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; Install default packages if necessary.
(defvar default-packages
  '(haskell-mode
    color-theme
    color-theme-solarized
    markdown-mode
    yasnippet
    fill-column-indicator
    ace-isearch)
  "A list of default packages to be installed at launch.")

(defun default-packages-installed-p ()
  (loop for p in default-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (default-packages-installed-p)
  (message "%s" "Emacs is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; install the missing packages
  (dolist (p default-packages)
    (when (not (package-installed-p p))
      (package-install p))))

(provide 'init-package)
