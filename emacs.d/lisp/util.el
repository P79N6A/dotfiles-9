;; Copyright 2010. wbb
;;     All rights reserved.
;;
;; util.el -- Common utility functions

(defun util/shift-region (distance)
  "Shift the selected region right if distance is postive, left if
negative"
  (let ((mark (mark)))
    (save-excursion
      (indent-rigidly (region-beginning) (region-end) distance)
      (push-mark mark t t)
      ;; Tell the command loop not to deactivate the mark
      ;; for transient mark mode
      (setq deactivate-mark nil))))

(defun util/shift-left ()
  "Shift the region left by tab-width."
  (interactive)
  (util/shift-region (- tab-width)))

(defun util/shift-right ()
  "Shift the region right by tab-width."
  (interactive)
  (util/shift-region tab-width))

(defun util/copy-line (&optional arg)
  "Copy current line to kill-ring without marking the line."
  (interactive "P")
  (let ((beg (line-beginning-position))
        (end (line-end-position arg)))
    (copy-region-as-kill beg end))
  (message "Copied a line."))

(defun util/insert-current-date ()
  "Insert current date at current point."
  (interactive)
  (insert (format-time-string "%Y-%m-%d")))

(defun util/insert-current-time ()
  "Insert current time at current point."
  (interactive)
  (insert (format-time-string "%Y-%m-%d %H:%M:%S")))

(defun util/kill-current-word ()
  "Kill current word."
  (interactive)
  (backward-word)
  (kill-word 1))

(defun util/next-buffer ()
  "Switch to previous buffer in current window."
  (interactive)
  (switch-to-buffer (car (reverse (buffer-list)))))

(defun util/other-buffer ()
  "Switch to the other buffer (2nd in list-buffer) in current window."
  (interactive)
  (switch-to-buffer (other-buffer)))

(defun util/kill-current-buffer ()
  "Kill current buffer."
  (interactive)
  (kill-buffer (current-buffer)))

(defun util/copy-current-path ()
  "Copy current file path to kill-ring."
  (interactive)
  (let ((filename (if (equal major-mode 'dired-mode)
                      default-directory
                    (buffer-file-name))))
    (if filename
        (progn (kill-new filename)
               (message "Copied path '%s'." filename))
      (message "No path associated with current buffer."))))

(defun util/copy-current-file-name ()
  "Copy current filename."
  (interactive)
  (let ((filename (if (equal major-mode 'dired-mode)
                      default-directory
                    (file-name-nondirectory (buffer-file-name)))))
    (if filename
        (progn (kill-new filename)
               (message "Copied filename '%s'." filename))
      (message "No filename associated with current buffer."))))

(defun util/copy-current-directory ()
  "Copy current directory to kill-ring."
  (interactive)
  (if default-directory
      (progn (kill-new default-directory)
             (message "Copied directory '%s'." default-directory))
    (message "No directory associated with current buffer.")))

(defun util/search-all-buffers (regexp)
  "Search all lines matching REGEXP in all open buffers."
  (interactive (list (read-regexp "List lines matching regexp: ")))
  (multi-occur-in-matching-buffers ".*" regexp t))

(defun util/fill ()
  "If area is selected call 'fill-region' otherwise call 'fill-paragraph'."
  (interactive)
  (if (region-active-p)
      (fill-region (region-beginning) (region-end))
    (fill-paragraph nil)))

(provide 'util)
