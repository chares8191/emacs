;; [.emacs.d/packages] init-rust-mode

(use-package cargo
  :straight t
  :commands (cargo-minor-mode))

(use-package toml-mode
  :straight t)

(use-package rust-mode
  :straight t
  :init
  (add-hook 'rust-mode-hook 'cargo-minor-mode)
  (add-hook 'toml-mode-hook 'cargo-minor-mode)
  :config
  (setq rust-format-on-save t)
  (setq rust-indent-method-chain t))

(provide 'init-rust-mode)
