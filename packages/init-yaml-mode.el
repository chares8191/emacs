;; [emacsdir/packages] init-yaml-mode -*- lexical-binding: t; -*-

(use-package yaml-mode
  :straight t
  :hook (yaml-mode . local-lsp-deferred)
  ;; :mode ("\\.\\(yaml\\|yml\\)\\'")
  )

(provide 'init-yaml-mode)
