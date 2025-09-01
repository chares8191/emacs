(setq inhibit-scratch-message nil)
(setq pop-up-windows nil)

;; UTF-8 as default encoding
(set-language-environment "utf-8")
(set-default-coding-systems 'utf-8-unix)
(set-keyboard-coding-system 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)

;; default tab width
(setq-default tab-width 4)

;; line numbers mode
(when (> emacs-major-version 26)
  (global-display-line-numbers-mode))

(column-number-mode 1)
(blink-cursor-mode 0)

;; make ibuffer default
(defalias 'list-buffers 'ibuffer)

(provide 'init-global-settings)
