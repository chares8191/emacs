;; default window size
(setq default-frame-alist
      '((left . 0) (width . 120) (fullscreen . fullheight)))

;; UTF-8 as default encoding
(set-language-environment "utf-8")
(set-default-coding-systems 'utf-8-unix)
(set-keyboard-coding-system 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)

;; default font
(set-face-attribute 'default nil :font "Space Mono 18")

;; default tab width
(setq-default tab-width 4)

;; user interface
(when (> emacs-major-version 26)
  (global-display-line-numbers-mode))

(column-number-mode 1)
(blink-cursor-mode 0)

;; make ibuffer default
(defalias 'list-buffers 'ibuffer)
