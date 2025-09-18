;; [init-load] /chares
(add-to-list 'load-path (expand-file-name "chares" user-emacs-directory))

(require 'chares-convert-to-geo)

(message "[init-load] /chares loaded")
(provide 'init-load-chares)
