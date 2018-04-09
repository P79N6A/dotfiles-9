;; -*- coding: utf-8-unix -*-
;; Copyright (c) 2010-2015 wbb
;;     All rights reserved.
;;
;; Time-stamp: <2018-04-10 00:09:48 spockwang>
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
(require 'init-xcscope)
(require 'init-smex)
(require 'init-web-mode)
(require 'init-auto-mark)
(require 'init-ace-window)
(require 'init-make-mode)
(require 'init-protobuf-mode)
(require 'init-desktop)

;; Load local customizations.
(require 'init-local nil t)
