;;; ~/.configdoom.wylin/+bindings.el -*- lexical-binding: t; -*-


;; insert mode for emacs
(map!
 ;; Unix text-editing keys & motions
 :gi "C-h"   #'delete-backward-char
 :gi "C-."   #'set-mark-command
 :gi "C-y"   #'yank
 :gi "C-;"   #'iedit-mode

 ;; emacs important shortcut
 :gvni "C-w"   #'kill-region
 :gvni "M-w"   #'kill-ring-save
 :gvni "C-'"   #'toggle-input-method
 )


;; my personal key bondings
(map!
 :leader
 (:prefix-map "s"
  :desc "Search in Youdao"   "d" #'youdao-dictionary-search
  :desc "Youdao with input"  "i" #'youdao-dictionary-search-from-input
  (:when IS-MAC
   :desc "Search in Dash"  ";" #'dash-at-point)))

;; for latex
(map!
 (:when (featurep! :lang latex)         ; local conditional
  (:map LaTeX-mode-map
   :localleader
   :desc "Compile" "c" #'TeX-command-master              ; compile tex
   :desc "View"    "v" #'TeX-view)))

;;Exit insert mode by pressing j and then j quickly
(setq key-chord-two-keys-delay 0.2)
(key-chord-define evil-insert-state-map "ij" 'evil-normal-state)
(key-chord-define evil-normal-state-map "ij" 'evil-normal-state)
(key-chord-define evil-insert-state-map "jj" 'evil-normal-state)
(key-chord-mode 1)


;; Set 'ij' to exit insert mode
(define-key evil-insert-state-map "i" #'cofi/maybe-exit-ij)
(evil-define-command cofi/maybe-exit-ij ()
  :repeat change
  (interactive)
  (let ((modified (buffer-modified-p)))
    (insert "i")
    (let ((evt (read-event (format "Insert %c to exit insert state" ?j)
                           nil 0.2)))
      (cond
       ((null evt) (message ""))
       ((and (integerp evt) (char-equal evt ?j))
        (delete-char -1)
        (set-buffer-modified-p modified)
        (push 'escape unread-command-events))
       (t (setq unread-command-events (append unread-command-events
                                              (list evt))))))))
