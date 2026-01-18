;; [.emacs.d/packages] init-yasnippet
(use-package yasnippet
  :straight t
  :config (yas-global-mode 1))

(use-package yasnippet-snippets
  :straight t
  :requires yasnippet)

(provide 'init-yasnippet)
