;; [init-load] /packages
(message "[init-load] loading /packages")

(add-to-list 'load-path (expand-file-name "packages" user-emacs-directory))

(require 'init-sokoban)
(require 'init-gruvbox)
(require 'init-keycast)

(require 'init-elisp-autofmt)
(require 'init-emacs-lisp-modes)
(require 'init-paredit-mode)
(require 'init-rust-mode)
(require 'init-json-mode)

(require 'init-yasnippet)
(require 'init-company)
(require 'init-lsp-mode)
(require 'init-osm)

(message "[init-load] loaded /packages")
(provide 'init-load-packages)
