# doom-wylin

## 在doom的config.el添加
(dolist (config '("~/.config/doom/local.el"
                  "~/.config/doom-wylin/profile.el"
                  "~/dev/work/dots/local.el"))
  (let ((config-file (file-truename config)))
    (when (file-exists-p config-file)
      (load-file config-file))))


## 在doom的package.el最后添加如下
(let ((packages "~/.config/doom-wylin/packages.el"))
  (when (file-exists-p packages)
    (load-file packages)))
