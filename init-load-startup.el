;; [init-load] /startup
(add-to-list 'load-path (expand-file-name "startup" user-emacs-directory))

(require 'init-startup-buffers)

(message "[init-load] /startup loaded")
(provide 'init-load-startup)
