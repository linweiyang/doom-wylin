;;; ~/.repos_emacs/config/wylin.private/profile.el -*- lexical-binding: t; -*-

(load! "bindings")
(load! "input")
(load! "orgconf")

(require 'flycheck)
(add-to-list 'flycheck-checkers 'textlint)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ivy-posframe-border-width 0))

;; python mode
;; (add-hook 'python-mode-hook 'anaconda-mode)

;;  org mode
(defun org-beamer-export-to-pdf-wylin
    (&optional async subtreep visible-only body-only ext-plist)
  (interactive)
  (let ((file (org-export-output-file-name ".tex" subtreep)))
    (org-export-to-file 'beamer file
      async subtreep visible-only body-only ext-plist
      'recompile)))

;; 使用xelatex一步生成PDF，不是org-latex-to-pdf-process这个命令
(setq org-latex-pdf-process
      '(
        "xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        ;;  "xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        ;;  "xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        ;;  "rm -fr %b.out %b.log %b.tex auto"
        ))

;; 设置默认后端为 `xelatex'
(setq org-latex-compiler "xelatex")

(map!
 (:after evil-org
  (:map evil-org-mode-map
   :leader
   (:prefix ("c" . "Import")
    :desc "compile org to pdf" "c" #'org-beamer-export-to-pdf-wylin))))

;; eshell
(setq-hook! 'eshell-mode-hook company-idle-delay nil)
(ispell-change-dictionary "american" t)

;; concat "java " (cdr (assoc :java params)) " -Djava.awt.headless=true -jar "

;; (setq matlab-server-executable "/Applications/Polyspace/R2019b/bin/matlab")
;; (add-to-list 'load-path "/Users/wylin/.emacs.d/.local/straight/repos/matlab-mode")
;; (require 'matlab)
;; (matlab-mode-common-setup)

(require 'doxygen)
(doom-big-font-mode)
