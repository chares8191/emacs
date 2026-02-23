;; [emacsdir/packages] init-rust-mode

(use-package cargo
  :straight t
  :commands (cargo-minor-mode))

(use-package toml-mode
  :straight t
  :hook
  ((toml-mode . cargo-minor-mode)
   (toml-mode . lsp-deferred)
   (toml-ts-mode . lsp-deferred)))

(use-package rust-mode
  :straight t
  :hook
  ((rust-mode . cargo-minor-mode)
   (rust-mode . lsp-deferred)
   (rust-ts-mode . lsp-deferred))
  :config
  (setq rust-format-on-save t)
  (setq rust-indent-method-chain t))

(provide 'init-rust-mode)
