;; Set default frame font
;; To check current font, run `M-x describe-font'.
;(set-frame-font "-outline-Consolas-normal-normal-normal-mono-18-*-*-*-c-*-iso10646-1")
(set-face-font 'default "-outline-Monaco-normal-normal-normal-mono-18-*-*-*-c-*-iso10646-1")

;; Set fonts for Chinese characters.
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font
   (frame-parameter nil 'font)
   charset
   (font-spec :family "华文楷体" :size 22)))

(provide 'init-font)
