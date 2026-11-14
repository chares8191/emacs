;; [emacsdir/packages] init-gruvbox -*- lexical-binding: t; -*-

(use-package gruvbox-theme
  :straight t
  :preface (require 'json)
  :config (load-theme 'gruvbox-dark-medium t))

(provide 'init-gruvbox)
