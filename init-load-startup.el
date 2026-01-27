;; [init-load][emacsdir/startup] :: init-load-startup
(message "[init-load][emacsdir/startup] :: started")

(add-to-list 'load-path (directory-file-name emacsdir/startup))

(require 'init-startup-buffers)

(message "[init-load][emacsdir/startup] :: complete")
(provide 'init-load-startup)
