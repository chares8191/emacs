;; [init-load][emacsdir/chares] :: init-load-chares
(message "[init-load][emacsdir/chares] :: started")

(add-to-list 'load-path (directory-file-name emacsdir/chares))

(require 'chares-convert-to-geo)

(message "[init-load][emacsdir/chares] :: complete")
(provide 'init-load-chares)
