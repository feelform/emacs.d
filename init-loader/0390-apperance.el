;; (add-lib-path "dircolors")
;; (require 'dircolors)

;; for Mac
(when (eq system-type 'darwin)
  (set-face-attribute 'default nil :height 180 :font "D2Coding"))

;; for Linux
(when (eq system-type 'gnu/linux)
  ;; Korean mode
  (set-language-environment "Korean")
  (prefer-coding-system 'utf-8)
  (global-set-key (kbd "<S-kana>") 'toggle-input-method)
  ;; Font size
  (set-fontset-font "fontset-default"
                    '(#x1100 . #xffdc) '("D2Coding" . "iso10646-1"))
  (setq face-font-rescale-alist '((".*D2Coding.*" . 1.2))))

;; Turn off the menu bar at the top of each frame because it's distracting
(menu-bar-mode -1)

;; Show line numbers
(global-linum-mode)

;; Remove the graphical toolbar at the top
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

;; Don't show native OS scroll bars for buffers because they're redundant
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; full path in title bar
(setq-default frame-title-format "%b (%f)")

;; Theme
(load-theme 'darcula t)
