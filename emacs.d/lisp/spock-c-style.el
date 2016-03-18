;;; spock-c-style.el -- My C/C++ style for c-mode and c++-mode

;; Provides the spock C/C++ coding style. You may wish to add
;; `spock-set-c-style' to your `c-mode-common-hook' after requiring this
;; file. For example:
;;
;;    (add-hook 'c-mode-common-hook 'spock-set-c-style)

(defun spock-c-lineup-for-statement (langelem)
  "Indent the for statement.

Make a relative offset of 0 for a normal statement, and an offset of 8 for
the statment in the for-statement.

For example,

    for (map<string, string>::const_iterator it = m.begin();
            it != m.end(); ++it) {
    <------> 2 * c-basic-offset

Works with: statement.
"
  (save-excursion
    (if (c-langelem-pos langelem)
        (progn
          ;; Go to the beginning of an earlier line which contains for-statment.
          (goto-char (c-langelem-pos langelem))
          (if (looking-at "for\\s *(")
              0
            (progn
              (back-to-indentation)
              (if (looking-at "for\\s *(")
                  (progn
                    (vector (+ (* 2 c-basic-offset) (current-column))))
                  0))))
      0)))

(defun spock-c-lineup-arglist (langelem)
  "Indent the statment in the if- or while-statement for two
  `c-basic-offset' from the keyword if or while, e.g:

      if (is_province == true &&
              p != NULL) {
      <------> 2 * c-basic-offset

For other situations return nil.

Works with: arglist-intro, arglist-cont, arglist-cont-nonempt.
"
  (save-excursion
    (if (c-langelem-pos langelem)
        (progn
          ;; Go to the beginning of an earlier line which contains if- or
          ;; while-statment.
          (goto-char (c-langelem-pos langelem))
          (if (looking-at "\\(if\\|while\\)\\s *(")
              (vector (+ (* 2 c-basic-offset) (current-column)))
            nil))
      nil)))

(defconst spock-c-style
  `((c-recognize-knr-p . nil)
    (c-basic-offset . 4)
    (c-comment-only-line-offset . 0)
    (c-hanging-braces-alist . ((defun-open after)
                               (defun-close before after)
                               (class-open after)
                               (class-close before after)
                               (namespace-open after)
                               (inline-open after)
                               (inline-close before after)
                               (block-open after)
                               (block-close . c-snug-do-while)
                               (extern-lang-open after)
                               (extern-lang-close after)
                               (statement-case-open after)
                               (substatement-open after)))
    (c-hanging-colons-alist . ((case-label)
                              (label after)
                              (access-label after)
                              (member-init-intro before)
                              (inher-intro)))
    (c-hanging-semi&comma-criteria
     . (c-semi&comma-no-newlines-for-oneline-inliners
        c-semi&comma-inside-parenlist
        c-semi&comma-no-newlines-before-nonblanks))
    (c-indent-comments-syntactically-p . nil)
    (comment-column . 30)
    (c-cleanup-list . (brace-else-brace
                       brace-elseif-brace
                       brace-catch-brace
                       empty-defun-braces
                       defun-close-semi
                       list-close-comma
                       scope-operator
                       comment-close-slash))
    (c-offsets-alist . ((arglist-intro . ++)
                        (arglist-cont-nonempty
                         spock-c-lineup-arglist
                         c-lineup-argcont
                         c-lineup-arglist)
                        (arglist-cont c-lineup-argcont 0)
                        (arglist-close . c-lineup-close-paren)
                        (func-decl-cont . ++)
                        (member-init-intro . +)
                        (inher-intro . ++)
                        (comment-intro . c-lineup-comment)
                        (topmost-intro . 0)
                        (block-open . 0)
                        (inline-open . 0)
                        (substatement-open . 0)
                        (statement . spock-c-lineup-for-statement)
                        (statement-cont
                         c-lineup-cascaded-calls
                         c-lineup-assignments
                         +)
                        (label . 0)
                        (case-label . 0)
                        (statement-case-open . +)
                        (statement-case-intro . +) ; case w/o {
                        (access-label . -)  ; line up 'public: ' etc with 'class'
                        (innamespace . +)
                        (stream-op . c-lineup-streamop)))
    ; Customize the behaviour of `comment-dwim'.
    (c-indent-comment-alist . ((empty-line align . nil)
                               (end-block space . 2)
                               (cpp-end-block space . 2)
                               (other space . 2))))
  "Spock C/C++ Programming Style")

(defun spock-set-c-style ()
  "Set the current buffer's c-style to Spock C/C++ Programming
  Style. Meant to be added to `c-mode-common-hook'."
  (interactive)
  (make-local-variable 'c-tab-always-indent)
  (setq c-tab-always-indent t)
  (c-add-style "Spock" spock-c-style t))

(provide 'spock-c-style)
