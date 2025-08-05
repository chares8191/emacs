;; debugging
(setq stack-trace-on-error t)

;; start time
(defconst em/emacs-load-time-start (float-time))

;; early config file
(load (expand-file-name "init-early.el" user-emacs-directory))

;; global config file
(load (expand-file-name "init-global.el" user-emacs-directory))

;; path config file
(load (expand-file-name "init-path.el" user-emacs-directory))

;; ;; emacs custom settings file
;; (setq custom-file
;;       (expand-file-name "init-custom.el" user-emacs-directory))
;; (load custom-file 'no-error)

;; ;; emacs packages settings file
;; (load (expand-file-name "init-packages.el" user-emacs-directory))

;; ;; user elisp config file
;; (load (expand-file-name "init-user.el" user-emacs-directory))

;; startup buffers
(find-file
 (expand-file-name ".zshrc" (directory-file-name (getenv "HOME"))))
(find-file (expand-file-name "init-user.el" user-emacs-directory))
(find-file (expand-file-name "init-packages.el" user-emacs-directory))
(find-file (expand-file-name "init-custom.el" user-emacs-directory))
(find-file (expand-file-name "init-path.el" user-emacs-directory))
(find-file (expand-file-name "init-global.el" user-emacs-directory))
(find-file (expand-file-name "init-early.el" user-emacs-directory))
(find-file (expand-file-name "init.el" user-emacs-directory))

;; startup time to messages buffer
(message "emacs init time %s" (emacs-init-time))
