;; [emacsdir/packages] init-yasnippet

(use-package yasnippet
  :straight t
  :diminish (yas-global-mode yas-minor-mode)
  :commands (yas-minor-mode)
  :config
  (setq yas-snippets-dir '(directory-file-name emacsdir/snippets))
  (yas-initialize)
  (yas-reload-all))

(use-package yasnippet-snippets
  :straight t
  :after (yasnippet)
  :config
  (add-to-list 'yas-snippet-dirs yasnippet-snippets-dir))

(provide 'init-yasnippet)
