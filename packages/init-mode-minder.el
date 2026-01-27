;; [emacsdir/packages] :: init-mode-minder

(add-to-list
 'load-path
 (expand-file-name
  (directory-file-name "mode-minder")
  (directory-file-name emacsdir/packages)))

(require 'mode-minder)

(provide 'init-mode-minder)
