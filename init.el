;; [emacs] :: init

;; debugging
(setq stack-trace-on-error t)

;; start time
(defconst em/emacs-load-time-start (float-time))

;; [init-load] :: init-load-const
(load (expand-file-name "init-load-const.el" user-emacs-directory))

;; [init-load] :: init-load-straight
(load (expand-file-name "init-load-straight.el" user-emacs-directory))

;; [init-load] :: init-load-settings
(load (expand-file-name "init-load-settings.el" user-emacs-directory))

;; [init-load] :: init-load-packages
(load (expand-file-name "init-load-packages.el" user-emacs-directory))

;; [init-load] :: init-load-chares
(load (expand-file-name "init-load-chares.el" user-emacs-directory))

;; [init-load] :: init-load-startup
(load (expand-file-name "init-load-startup.el" user-emacs-directory))

;; startup time to messages buffer
(message "emacs init time %s" (emacs-init-time))
