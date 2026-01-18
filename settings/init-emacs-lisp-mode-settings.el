;; [.emacs.d/settings] init-emacs-lisp-mode-settings

;; eldoc-mode
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)

(provide 'init-emacs-lisp-mode-settings)
