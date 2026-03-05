;; [emacsdir/startup] init-startup-buffers

(find-file (expand-file-name (getenv "ZSHENV_FILE")))
(find-file (expand-file-name (getenv "ZSHRC_FILE")))

(provide 'init-startup-buffers)
