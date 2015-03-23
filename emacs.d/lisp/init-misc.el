;; Set initial frame size.
(setq initial-frame-alist '((top . 10) (left . 10) (width . 100) (height . 30)))

;; Get a visual, instead of audio, feedback of an exception.
(setq visible-bell nil)

;; Do not show startup message.
(setq inhibit-startup-message t)

;; Set the default directory when finding a file.
(setq default-directory "~/")

;; Set default major mode to text-mode.
(setq default-major-mode 'text-mode)

;; Set default fill column.
(setq-default fill-column 100)
(turn-on-auto-fill)

;; Update time stamp string in the buffer before saving.
(add-hook 'before-save-hook 'time-stamp)

;; Save bookmark automatically.
(setq bookmark-save-flag 1)

;; Split always vertically.
(setq split-height-threshold 20)
(setq split-width-threshold nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Look and feel
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Hide tool bar.
(tool-bar-mode 0)

;; Hide right scroll bar.
(if (display-graphic-p)
    (scroll-bar-mode 0))

;; Hide the menu bar.
(menu-bar-mode 0)

;; Show line number at the mode line.
(line-number-mode t)

;; Show column number at the mode line.
(column-number-mode t)

;; Show line numbers in the left margin.
(global-linum-mode)

;; Display time and date at the mode line.
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(display-time)

;; Show system name and full path of buffer at the title bar.
(setq frame-title-format
      (list (format "%s %%S: %%j " (system-name))
                    '(buffer-file-name "%f" (dired-directory
                                             dired-directory "%b"))))

;; Highlight current line.
(global-hl-line-mode 1)

;; Use space instead of tabs.
(setq-default indent-tabs-mode nil)

;; Set transient-mark-mode.
(setq transient-mark-mode t)

;; Syntax highlight.
(global-font-lock-mode 1)

;; Show matched parentheses.
(show-paren-mode t)

;; Automatic backup but no version control.
(setq make-backup-files t)
(setq version-control t)
(setq delete-old-versions t
      kept-new-versions 3
      kept-old-versions 0)

(provide 'init-misc)
