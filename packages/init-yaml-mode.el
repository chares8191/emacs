;; [emacsdir/packages] init-yaml-mode

(use-package yaml-mode
  :straight t
  :hook (yaml-mode . local-lsp-deferred)
  ;; :mode ("\\.\\(yaml\\|yml\\)\\'")
  )

(provide 'init-yaml-mode)
