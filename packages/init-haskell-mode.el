;; [.emacs.d/packages] init-haskell-mode

;; https://github.com/tibbe/haskell-style-guide
(add-to-list
 'load-path
 (expand-file-name
  (directory-file-name "haskell-style-guide")
  (directory-file-name emacsdir/packages)))
(require 'haskell-style)

(use-package haskell-mode
  :straight t)

(provide 'init-haskell-mode)
