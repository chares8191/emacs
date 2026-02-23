;; [emacsdir/settings] init-global-settings

;; UTF-8 as default encoding
(set-language-environment "utf-8")
(set-default-coding-systems 'utf-8-unix)
(set-keyboard-coding-system 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)

;; defaults
(setq-default inhibit-scratch-message nil)
(setq-default pop-up-windows nil)
(setq-default tab-width 4)
(setq-default column-number-mode 1)
(setq-default blink-cursor-mode 0)
(setq-default show-paren-mode 1)
(setq-default require-final-newline 1)

;; line numbers mode
(when (> emacs-major-version 26)
  (global-display-line-numbers-mode))

;; make ibuffer default
(defalias 'list-buffers 'ibuffer)

(provide 'init-global-settings)
