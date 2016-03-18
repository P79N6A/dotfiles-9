(require-package 'fill-column-indicator)
(require 'fill-column-indicator)

;; `popup.el` is not compatible with `fci-mode`, so disable fci-mode temporarily when a popup menu
;; is in effect.
(defvar my/fci-mode-suppressed nil)
(defadvice popup-create (before suppress-fci-mode activate)
  "Suspend fci-mode while popups are visible"
  (set (make-local-variable 'my/fci-mode-suppressed) fci-mode)
  (when fci-mode
    (turn-off-fci-mode)))
(defadvice popup-delete (after restore-fci-mode activate)
  "Restore fci-mode when all popups have closed"
  (when (and (not popup-instances) my/fci-mode-suppressed)
    (setq my/fci-mode-suppressed nil)
    (turn-on-fci-mode)))

(provide 'init-fci)
