;; -*- coding: utf-8-unix -*-
;; Copyright (c) 2010-2015 wbb
;;     All rights reserved.
;;
;; Time-stamp: <2016-03-18 09:55:21 Administrator>
;;

(require 'server)
(unless (server-running-p)
  (server-start))

;; Set load-path variable.
(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'init-package)
(require 'init-benchmarking)
(require 'init-preload-local nil t)
(require 'init-misc)
(require 'init-key-bindings)
;(require 'sams-lib)
;(require 'init-ace-isearch)
(require 'init-uniquify)
(require 'init-ibuffer)
(require 'init-fci)
(require 'init-auto-insert)
(require 'init-cc-mode)
(require 'init-jce)
(require 'init-eshell)
(require 'init-html)
(require 'init-java)
(require 'init-perl)
(require 'init-php)
(require 'init-python)
(require 'init-sh)
(require 'init-shell)
(require 'init-sql)
(require 'init-emacs-lisp)
(require 'init-javascript)
(require 'init-yasnippet)
(require 'init-locale)
(require 'init-font)
(require 'init-theme)
;(require 'init-auto-complete)
(require 'init-xcscope)
(require 'init-smex)
(require 'init-web-mode)
(require 'init-auto-mark)
(require 'init-ace-window)
(require 'init-desktop)

;; Load local customizations.
(require 'init-local nil t)
