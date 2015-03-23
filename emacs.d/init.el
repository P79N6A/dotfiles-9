;; -*- coding: utf-8-unix -*-
;; Copyright (c) 2010-2015 wbb
;;     All rights reserved.
;;
;; Time-stamp: <2015-03-23 18:57:07 spockwang>
;;

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
(require 'ace-isearch)
(global-ace-isearch-mode +1)
(setq ace-isearch-input-length 10)
      
(require 'init-theme)
(require 'init-locale)
(require 'init-font)
(require 'init-uniquify)
(require 'init-ibuffer)
(require 'init-fci)
(require 'init-auto-insert)
(require 'init-cc-mode)
(require 'init-desktop)
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

;; Load local customizations.
(require 'init-local nil t)
