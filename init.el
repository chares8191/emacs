;; [emacsdir] init.el

;; debugging
(setq debug-on-error t)

(defconst emacsdir
  (directory-file-name
   (expand-file-name user-emacs-directory)))

(defconst homedir
  (directory-file-name
   (expand-file-name "~")))

;; [emacsdir] init-const-emacsdir
(load (expand-file-name "init-const-emacsdir.el" emacsdir))

;; [emacsdir] init-const-homedir
(load (expand-file-name "init-const-homedir.el" emacsdir))

;; [emacsdir] init-load-straight
(load (expand-file-name "init-load-straight.el" emacsdir))

;; [emacsdir] init-load-settings
(load (expand-file-name "init-load-settings.el" emacsdir))

;; [emacsdir] init-load-packages
(load (expand-file-name "init-load-packages.el" emacsdir))

;; [emacsdir] init-load-chares
(load (expand-file-name "init-load-chares.el" emacsdir))

;; [emacsdir] init-load-startup
(load (expand-file-name "init-load-startup.el" emacsdir))

;; startup timings
(message "emacs-init-time :: %s" (emacs-init-time))
