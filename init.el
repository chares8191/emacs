;; [emacsdir] init.el

;; debugging
(setq stack-trace-on-error t)

;; [emacsdir] init-load-const
(load (expand-file-name "init-load-const.el" user-emacs-directory))

;; [emacsdir] init-load-straight
(load (expand-file-name "init-load-straight.el" user-emacs-directory))

;; [emacsdir] init-load-settings
(load (expand-file-name "init-load-settings.el" user-emacs-directory))

;; [emacsdir] init-load-packages
(load (expand-file-name "init-load-packages.el" user-emacs-directory))

;; [emacsdir] init-load-chares
(load (expand-file-name "init-load-chares.el" user-emacs-directory))

;; [emacsdir] init-load-startup
(load (expand-file-name "init-load-startup.el" user-emacs-directory))

;; startup timings
(message "emacs-init-time :: %s" (emacs-init-time))
