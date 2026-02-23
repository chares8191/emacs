;; [emacsdir] init-load-packages
(message "[emacsdir] init-load-packages :: started")

(add-to-list 'load-path (directory-file-name emacsdir/packages))

(require 'init-mode-minder)
(require 'init-keycast)
(require 'init-gruvbox)
(require 'init-sokoban)
(require 'init-osm)

(require 'init-yasnippet)
(require 'init-company)
(require 'init-lsp-mode)

(require 'init-lisp-mode)
(require 'init-rust-mode)
(require 'init-haskell-mode)
(require 'init-agda-mode)
(require 'init-lean4-mode)
(require 'init-json-mode)

(message "[emacsdir] init-load-packages :: complete")
(provide 'init-load-packages)
