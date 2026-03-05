;; [emacsdir/packages] init-yasnippet

(use-package yasnippet
  :straight t
  :diminish (yas-global-mode yas-minor-mode)
  :commands (yas-minor-mode)
  :custom
  (yas-snippet-dirs (list (directory-file-name emacsdir/snippets)))
  :config
  (yas-initialize)
  (yas-reload-all))

(use-package yasnippet-snippets
  :straight t
  :after (yasnippet)
  :config
  (yasnippet-snippets-initialize))

(provide 'init-yasnippet)
