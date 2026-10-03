;; [emacsdir/packages] init-rust-mode -*- lexical-binding: t; -*-

(use-package cargo
  :straight t
  :commands (cargo-minor-mode))

(use-package toml-mode
  :straight t
  :hook
  ((toml-mode . cargo-minor-mode)
   (toml-mode . local-lsp-deferred)
   (toml-ts-mode . local-lsp-deferred)))

(use-package rust-mode
  :straight t
  :hook
  ((rust-mode . cargo-minor-mode)
   (rust-mode . local-lsp-deferred)
   (rust-ts-mode . local-lsp-deferred))
  :config
  (setq rust-format-on-save t)
  (setq rust-indent-method-chain t))

(provide 'init-rust-mode)
