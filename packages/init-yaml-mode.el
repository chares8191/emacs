;; [emacsdir/packages] init-yaml-mode

(use-package yaml-mode
  :straight t
  :hook (yaml-mode . lsp-deferred)
  ;; :mode ("\\.\\(yaml\\|yml\\)\\'")
  )

(provide 'init-yaml-mode)
