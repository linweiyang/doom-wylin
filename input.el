;;; ~/emacs_dir/doom.d.ztlevi/wylin/input.el -*- lexical-binding: t; -*-
;; 中文输入法不匹配影响中文输入问题
;; (require 'fcitx)
;; (cond
;;  ;; macos
;;  ((eq system-type 'darwin)
;;   (when (executable-find "fcitx-remote")
;;     (fcitx-aggressive-setup)))
;;  ;; Windows
;;  ((eq system-type 'window-nt)
;;   (when (executable-find "fcitx-remote")
;;     (fcitx-aggressive-setup)))
;;  ;; Linux
;;  ((eq system-type 'gnu/linux)
;;   (when (executable-find "fcitx-remote")
;;     (fcitx-aggressive-setup)
;;     (setq fcitx-use-dbus t)))
;;  )

;; (setq load-path (cons (file-truename "~/.config/doom.wylin") load-path))
;; (require 'posframe)

;; (use-package! pyim
;;   :init
;;   (setq default-input-method "pyim"
;;         pyim-default-scheme 'rime-quanpin
;;         pyim-page-length 9
;;         pyim-page-tooltip 'proframe)
;;   :config

;;   )

;; (use-package! liberime
;;   ;; :custom
;;   ;; (rime_share_data_dir "/Library/Input Methods/Squirrel.app/Contents/SharedSupport/")
;;   ;; (rime_user_data_dir (file-truename "~/.config/doom.wylin/pyim/rime/"))
;;   :config
;;   ;; 配置同步文件夹
;;   (liberime-start "/Library/Input Methods/Squirrel.app/Contents/SharedSupport" (file-truename "~/.config/doom.wylin/pyim/rime/"))
;;   (liberime-select-schema "luna_pinyin_simp")
;;   (setq pyim-default-scheme 'rime-quanpin))

;; rime
(setq load-path (cons (file-truename "~/.config/doom-wylin") load-path))

(use-package! pyim
  :init
  (setq pyim-page-length 5
        default-input-method "pyim"
        pyim-page-tooltip 'posframe
        pyim-title '"鼠须管"
        )
  :config
  ;; 选词方法
  (define-key pyim-mode-map "." 'pyim-page-next-page)
  (define-key pyim-mode-map "," 'pyim-page-previous-page)
  (require 'pyim-greatdict)
  (pyim-greatdict-enable)
  )

;; 第一个参数是共享文件夹，见https://github.com/rime/home/wiki/SharedData
;; 第二个参数是个人文件夹
;; 注意：设置的时候最好不要使用软链接，也不要使用 "~" 和相对路径，liberime有时候无法处理。
;; 输入法工具
(use-package! liberime
  ;; :custom
  ;; (rime_share_data_dir "/Library/Input Methods/Squirrel.app/Contents/SharedSupport/")
  ;; (rime_user_data_dir (file-truename "~/.config/doom.wylin/pyim/rime/"))
  :config
  ;; 配置同步文件夹
  (liberime-start "/Library/Input Methods/Squirrel.app/Contents/SharedSupport" "~/.config/doom-wylin/pyim/rime")
  (liberime-select-schema "luna_pinyin_simp")
  (setq pyim-default-scheme 'rime-quanpin))
