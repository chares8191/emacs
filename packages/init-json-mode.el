;; [.emacs.d/packages] init-json-mode

(use-package json-mode
  :mode "\\.json\\'"
  :config
  (setq js-indent-level 4))

(provide 'init-json-mode)

