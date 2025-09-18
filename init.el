;; debugging
(setq stack-trace-on-error t)

;; start time
(defconst em/emacs-load-time-start (float-time))

;; [init-load] /straight
(load (expand-file-name "init-load-straight.el" user-emacs-directory))

;; [init-load] /settings
(load (expand-file-name "init-load-settings.el" user-emacs-directory))

;; [init-load] /packages
(load (expand-file-name "init-load-packages.el" user-emacs-directory))

;; [init-load] /chares
(load (expand-file-name "init-load-chares.el" user-emacs-directory))

(add-hook 'emacs-lisp-mode-hook 'eldoc-mode)

;; [init-load] /startup
(find-file (expand-file-name ".zshrc" (directory-file-name (getenv "HOME"))))
(find-file (expand-file-name "init.el" user-emacs-directory))
(find-file user-emacs-directory)

;; startup time to messages buffer
(message "emacs init time %s" (emacs-init-time))
