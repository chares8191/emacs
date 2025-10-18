;; [init-load] /startup
(message "[init-load] loading /startup")

(add-to-list 'load-path (expand-file-name "startup" user-emacs-directory))

(require 'init-startup-buffers)

(message "[init-load] loaded /startup")
(provide 'init-load-startup)
