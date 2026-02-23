;; [emacsdir] init-load-settings
(message "[emacsdir] init-load-settings :: started")

(add-to-list 'load-path (directory-file-name emacsdir/settings))

(require 'init-performance-settings)
(require 'init-frame-settings)
(require 'init-global-settings)
(require 'init-bindkey-settings)

(message "[emacsdir] init-load-settings :: complete")
(provide 'init-load-settings)
