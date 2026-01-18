;; [.emacs.d/packages] init-lsp-mode

(use-package lsp-mode
  :commands
  (lsp lsp-deferred)
  :hook
  ((sh-mode . lsp-deferred)
   (rust-mode . lsp-deferred)
   (rust-ts-mode . lsp-deferred)
   (toml-mode . lsp-deferred)
   (toml-ts-mode . lsp-deferred)
   (lsp-mode . lsp-enable-which-key-integration))
  :custom
  (lsp-keymap-prefix "C-c l"))

(use-package lsp-ui
  :after lsp-mode
  :hook (lsp-mode . lsp-ui-mode))

(provide 'init-lsp-mode)
