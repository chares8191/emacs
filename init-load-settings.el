;; [init-load][emacsdir/settings] :: init-load-settings
(message "[init-load][emacsdir/settings] :: started")

(add-to-list 'load-path (directory-file-name emacsdir/settings))

(require 'init-frame-settings)
(require 'init-global-settings)
(require 'init-bindkey-settings)
(require 'init-emacs-lisp-mode-settings)

(message "[init-load][emacsdir/settings] :: complete")
(provide 'init-load-settings)
