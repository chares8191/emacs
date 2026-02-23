;; [emacsdir/startup] init-startup-buffers

(find-file (expand-file-name (getenv "ZSHENV_FILE")))
(find-file (expand-file-name (getenv "ZSHRC_FILE")))
(find-file (expand-file-name "init.el" user-emacs-directory))
(find-file user-emacs-directory)

(provide 'init-startup-buffers)
