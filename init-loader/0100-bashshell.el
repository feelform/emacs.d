;; https://github.com/purcell/exec-path-from-shell
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; https://github.com/szermatt/emacs-bash-completion
(require 'bash-completion)
(bash-completion-setup)
