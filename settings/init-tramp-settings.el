;; [emacsdir/settings] init-tramp-settings

(require 'tramp)

(add-to-list
 'tramp-connection-properties
 (list (regexp-quote "/sshx:chat.chares.dev:")
	   "remote-shell"
	   "/usr/bin/zsh"))

(add-to-list 'tramp-remote-path 'tramp-own-remote-path)

(provide 'init-tramp-settings)
