;; [emacsdir] init-load-chares
(message "[emacsdir] init-load-chares :: started")

(add-to-list 'load-path (directory-file-name emacsdir/chares))

(require 'chares-convert-to-geo)

(message "[emacsdir] init-load-chares :: complete")
(provide 'init-load-chares)
