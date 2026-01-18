;; [.emacs.d/packages] init-lsp-mode

(use-package lsp-mode
  :straight t
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
  (lsp-keymap-prefix "C-c l")
  (lsp-auto-guess-root t)
  (lsp-bash-allowed-shells '(sh bash zsh)))

(use-package lsp-ui
  :straight t
  :after lsp-mode
  :hook (lsp-mode . lsp-ui-mode))

(provide 'init-lsp-mode)
