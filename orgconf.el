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

(use-package org-roam-server
  :ensure t
  :hook
  (after-init . org-roam-server-mode)
  :custom
  (setq org-roam-server-host "127.0.0.1"
        org-roam-server-port 9090
        org-roam-server-export-inline-images t
        org-roam-server-authenticate nil
        org-roam-server-network-label-truncate t
        org-roam-server-network-label-truncate-length 60
        org-roam-server-network-label-wrap-length 20))


(provide 'orgconf)
;;; orgconf.el ends here
