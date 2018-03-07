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
