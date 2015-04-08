;; Copyright 2010. wbb
;;     All rights reserved.
;;
;; util.el -- Common utility functions
;;
;; Time-stamp: <2015-04-08 13:31:41 spockwang>

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

(defun util/emacs-maximize ()
 "Maximize Emacs."
 (interactive)
 (if (win32-p)                    ; in Windows
     ;; send maximize message to the window   
     (w32-send-sys-command #xf030)
   (if (emacs-p)                        ; in Linux
       (progn
        (x-send-client-message
         nil 0 nil "_NET_WM_STATE" 32    
         '(1 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
        (x-send-client-message
         nil 0 nil "_NET_WM_STATE" 32
         '(1 "_NET_WM_STATE_MAXIMIZED_VERT" 0)))
     nil)))

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

(provide 'util)
