;; [init-load] /packages
(add-to-list 'load-path (expand-file-name "packages" user-emacs-directory))

(require 'init-gruvbox)
(require 'init-yasnippet)
(require 'init-elisp-autofmt)
(require 'init-osm)
(require 'init-company)
(require 'init-sokoban)

(message "[init-load] /packages loaded")
(provide 'init-load-packages)
