;; [init-load] /settings
(add-to-list 'load-path (expand-file-name "settings" user-emacs-directory))

(require 'init-frame-settings)
(require 'init-global-settings)

(message "[init-load] /settings loaded")
(provide 'init-load-settings)
