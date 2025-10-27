;; [.emacs.d/packages] init-rust-mode

(use-package cargo)
(use-package toml-mode)

(use-package rust-mode
  :init
  (add-hook 'rust-mode-hook 'cargo-minor-mode)
  (add-hook 'toml-mode-hook 'cargo-minor-mode)
  :config
  (setq rust-format-on-save t)
  (setq rust-indent-method-chain t))

(provide 'init-rust-mode)
