;; [emacsdir] init-load-startup
(message "[emacsdir] init-load-startup :: started")

(add-to-list 'load-path (directory-file-name emacsdir/startup))

(require 'init-startup-buffers)

(message "[emacsdir] init-load-startup :: complete")
(provide 'init-load-startup)
