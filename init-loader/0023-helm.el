(require 'helm)
(require 'helm-projectile)
(require 'helm-ag)
(require 'helm-config)

(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "s-f") #'helm-projectile-ag)
(global-set-key (kbd "s-t") #'helm-projectile-find-file-dwim)

(helm-mode 1)
(helm-projectile-on)
