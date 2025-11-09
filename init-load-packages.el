;; [init-load] /packages
(message "[init-load] loading /packages")

(add-to-list 'load-path (expand-file-name "packages" user-emacs-directory))

(require 'init-gruvbox)
(require 'init-yasnippet)
(require 'init-elisp-autofmt)
(require 'init-osm)
(require 'init-company)
(require 'init-keycast)
(require 'init-sokoban)
(require 'init-rust-mode)
(require 'init-json-mode)

(message "[init-load] loaded /packages")
(provide 'init-load-packages)
