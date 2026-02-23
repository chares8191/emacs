;; [emacsdir/packages] init-lsp-mode

(use-package lsp-mode
  :straight t
  :commands (lsp lsp-deferred lsp-enable-which-key-integration)
  :hook (lsp-mode . lsp-enable-which-key-integration)
  :custom
  (lsp-restart 'auto-restart)
  (lsp-keymap-prefix "C-c l")
  (lsp-auto-guess-root t)
  (lsp-eldoc-enable-hover nil)
  (lsp-bash-allowed-shells '(sh bash zsh)))

(use-package lsp-ui
  :straight t
  :hook (lsp-mode . lsp-ui-mode))

(use-package lsp-haskell
  :straight t
  :custom
  (lsp-haskell-server-path "haskell-language-server"))

(provide 'init-lsp-mode)
