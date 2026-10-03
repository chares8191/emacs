;; [emacsdir/startup] init-startup-buffers -*- lexical-binding: t; -*-

(dolist (env-var '("ZSHENV_FILE" "ZSHRC_FILE"))
  (when-let* ((path (getenv env-var))
              (expanded (expand-file-name path))
              ((file-readable-p expanded)))
    (find-file expanded)))

(provide 'init-startup-buffers)
