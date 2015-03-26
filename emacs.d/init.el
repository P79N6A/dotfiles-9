;; -*- coding: utf-8-unix -*-
;; Copyright (c) 2010-2015 wbb
;;     All rights reserved.
;;
;; Time-stamp: <2015-03-26 16:23:50 spockwang>
;;

(require 'server)
(unless (server-running-p)
  (server-start))

;; Set load-path variable.
(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'init-preload-local nil t)
(require 'sams-lib)
(require 'redo)
(require 'pager)
(require 'xcscope)
(require 'init-package)

(iswitchb-mode 1)
(ido-mode 1)
(require 'init-ace-isearch)
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
(require 'init-key-bindings)
(require 'init-yasnippet)
(require 'init-misc)
(require 'init-desktop)
(require 'init-theme)
(require 'init-locale)
(require 'init-font)

;; Load local customizations.
(require 'init-local nil t)
