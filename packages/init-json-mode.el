;; [emacsdir/packages] init-json-mode

(use-package json-mode
  :straight t
  :mode "\\.json\\'"
  :config
  (setq js-indent-level 4))

(provide 'init-json-mode)

