;; [emacsdir/packages] init-lisp-mode

(use-package paredit
  :straight t
  :hook
  ((emacs-lisp-mode . paredit-mode)
   (lisp-mode . paredit-mode)
   (lisp-interaction-mode . paredit-mode)
   (scheme-mode . paredit-mode))
  :custom
  (show-paren-mode t))

(use-package rainbow-delimiters
  :straight t
  :commands (rainbow-delimiters-mode)
  :hook
  ((emacs-lisp-mode . rainbow-delimiters-mode)
   (lisp-mode . rainbow-delimiters-mode)
   (lisp-interaction-mode . rainbow-delimiters-mode)
   (scheme-mode . rainbow-delimiters-mode))
  :custom
  (show-paren-mode t))

(use-package eldoc
  :straight t
  :commands (turn-on-eldoc-mode)
  :hook
  ((emacs-lisp-mode . turn-on-eldoc-mode)
   (lisp-interaction-mode . turn-on-eldoc-mode)))

(use-package highlight-defined
  :straight t
  :commands (highlight-defined-mode)
  :hook
  ((emacs-lisp-mode . highlight-defined-mode)
   (lisp-interaction-mode . highlight-defined-mode)))

(provide 'init-lisp-mode)
