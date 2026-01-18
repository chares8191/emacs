;; [.emacs.d/packages] init-emacs-lisp-modes.el

(use-package highlight-defined
  :straight t
  :hook (emacs-lisp-mode . highlight-defined-mode))

(provide 'init-emacs-lisp-modes)
