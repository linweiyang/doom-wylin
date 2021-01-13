;;; orgconf.el is my configuration for doom emacs -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2020  Weiyang LIN
;;
;; Author:  Weiyang LIN <http://github/wylin>
;; Maintainer:  Weiyang LIN <wylin@WeiyangLINdeMacbook.local>
;; Created: September 16, 2020
;; Modified: September 16, 2020
;; Version: 0.0.1
;; Keywords:
;; Homepage: https://github.com/wylin/orgconf
;; Package-Requires: ((emacs 26.3) (cl-lib "0.5"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;
;;
;;; Code:

;; org-roam mode configuration
(use-package org-roam
  :ensure t
  :hook
  (after-init . org-roam-mode)
  :custom
  (org-roam-directory "~/OneDrive/org-notes/org-roam"))


(provide 'orgconf)
;;; orgconf.el ends here
