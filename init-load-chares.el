;; [init-load] /chares
(message "[init-load] loading /chares")

(add-to-list 'load-path (expand-file-name "chares" user-emacs-directory))

(require 'chares-convert-to-geo)

(message "[init-load] loaded /chares")
(provide 'init-load-chares)
