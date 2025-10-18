;; [init-load] /settings
(message "[init-load] loading /settings")

(add-to-list 'load-path (expand-file-name "settings" user-emacs-directory))

(require 'init-frame-settings)
(require 'init-global-settings)
(require 'init-bindkey-settings)

(message "[init-load] loaded /settings")
(provide 'init-load-settings)
