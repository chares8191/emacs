;; [.emacs.d/packages] init-company-lsp

(use-package company-lsp
  :straight t
  :after '(company lsp-mode)
  :config
  (push 'company-lsp company-backends)
  (setq company-lsp-async t)
  (setq company-lsp-cache-candidates t)
  (setq company-lsp-enable-recompletion t))

(provide 'init-company-lsp)

