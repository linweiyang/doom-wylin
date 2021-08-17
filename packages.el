;;; package.el -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2021  Weiyang LIN
;;
;; Author:  Weiyang LIN <http://github/wylin>
;; Maintainer:  Weiyang LIN <wylin@WeiyangLINdeMacbook.local>
;; Created: January 13, 2021
;; Modified: January 13, 2021
;; Version: 0.0.1
;; Keywords:
;; Homepage: https://github.com/wylin/package
;; Package-Requires: ((emacs 27.1) (cl-lib "0.5"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;
;;
;;; Code:
(package! py-isort)
(package! flycheck-mypy)
(package! flycheck-googlelint-cpplint :recipe (:host github :repo "flycheck/flycheck-google-cpplint"))

(package! key-chord)
(package! doxygen)
(package! dash-at-point)
(package! graphviz-dot-mode)
(package! unfill)
(package! textlint)
(package! pyim)
(package! liberime)
(package! undo-tree)
(package! org-roam-server)
(package! dap-mode)

(provide 'packages)
;;; package.el ends here
