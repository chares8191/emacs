;; debugging
(setq stack-trace-on-error t)

;; start time
(defconst em/emacs-load-time-start (float-time))

;; early config file
(load (expand-file-name "init-straight.el" user-emacs-directory))

;; early load global settings
(add-to-list 'load-path (expand-file-name "settings" user-emacs-directory))

(require 'init-frame-settings)
(require 'init-global-settings)

;; load packages
(add-to-list 'load-path (expand-file-name "packages" user-emacs-directory))
(require 'init-gruvbox)
(require 'init-yasnippet)
(require 'init-elisp-autofmt)
(require 'init-osm)
(require 'init-company)
(require 'init-sokoban)

(add-hook 'emacs-lisp-mode-hook 'eldoc-mode)

;; startup buffers
(find-file
 (expand-file-name ".zshrc" (directory-file-name (getenv "HOME"))))
(find-file (expand-file-name "init-user.el" user-emacs-directory))
(find-file (expand-file-name "init-packages.el" user-emacs-directory))
(find-file (expand-file-name "init-custom.el" user-emacs-directory))
(find-file (expand-file-name "init-path.el" user-emacs-directory))
(find-file (expand-file-name "init-global.el" user-emacs-directory))
(find-file (expand-file-name "init-straight.el" user-emacs-directory))
(find-file (expand-file-name "init.el" user-emacs-directory))

;; startup time to messages buffer
(message "emacs init time %s" (emacs-init-time))
