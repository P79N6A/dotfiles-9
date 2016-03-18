(require 'desktop)
(setq desktop-path '("~/.emacs.d/"))

;; Auto save a session.
(desktop-save-mode 1)
(setq desktop-save t
      desktop-load-locked-desktop t)

(add-to-list 'desktop-modes-not-to-save 'fundamental-mode)
(add-to-list 'desktop-modes-not-to-save 'text-mode)
(add-to-list 'desktop-modes-not-to-save 'dired-mode)
(add-to-list 'desktop-modes-not-to-save 'Info-mode)
(add-to-list 'desktop-modes-not-to-save 'info-lookup-mode)

(provide 'init-desktop)
