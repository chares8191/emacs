;; [init-load][emacsdir/packages] :: init-load-packages
(message "[init-load][emacsdir/packages] :: started")

(add-to-list 'load-path (directory-file-name emacsdir/packages))

(require 'init-sokoban)
(require 'init-gruvbox)
(require 'init-keycast)

(require 'init-elisp-autofmt)
(require 'init-emacs-lisp-modes)
(require 'init-paredit-mode)
(require 'init-rust-mode)
(require 'init-haskell-mode)
(require 'init-json-mode)
(require 'init-agda-mode)

(require 'init-yasnippet)
(require 'init-company)
(require 'init-lsp-mode)
(require 'init-osm)

(require 'init-mode-minder)

(message "[init-load][emacsdir/packages] :: complete")
(provide 'init-load-packages)
