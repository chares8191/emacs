;; elisp-autofmt
(use-package
 elisp-autofmt
 :commands (elisp-autofmt-mode elisp-autofmt-buffer)
 :hook (emacs-lisp-mode . elisp-autofmt-mode))

(setq elisp-autofmt-python-bin "python3")

(provide 'init-elisp-autofmt)
