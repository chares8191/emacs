;; [emacsdir] init-load-startup
(message "[emacsdir] init-load-startup :: started")

(add-to-list 'load-path (directory-file-name emacsdir/startup))

(unless noninteractive ;; todo fold into the files
  (require 'init-startup-buffers)
  (require 'init-startup-window))

(message "[emacsdir] init-load-startup :: complete")
(provide 'init-load-startup)
