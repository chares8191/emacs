;; [.emacs.d/packages] init-paredit-mode

(use-package paredit
  :straight t
  :hook
  ((emacs-lisp-mode . paredit-mode)
   (lisp-mode . paredit-mode)
   (lisp-interaction-mode . paredit-mode)
   (scheme-mode . paredit-mode))
  :config (show-paren-mode t))

(provide 'init-paredit-mode)
