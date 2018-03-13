;;
;; Emacs configuration
;; based on https://www.braveclojure.com/basic-emacs/
;;

;;(setq inhibit-startup-message t
;;      inhibit-startup-echo-area-message t)
(setq inhibit-startup-screen t)

(package-initialize)


(defconst +home-dir+ "~")
(defconst +emacs-dir+ (concat +home-dir+ "/.emacs.d"))
(defconst +emacs-lib-dir+ (concat +emacs-dir+ "/libs"))
(defconst +emacs-tmp-dir+ (concat +emacs-dir+ "/tmp"))

(require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")
(cask-initialize)

(setq init-loader-show-log-after-init 'error-only)
(init-loader-load "~/.emacs.d/init-loader/")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (ruby-tools ruby-interpolation ruby-hash-syntax ruby-end ruby-block rspec-mode robe rinari restclient pallet magit init-loader darcula-theme cider auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
