;; startup/init-startup-buffers

(find-file
 (expand-file-name ".xinitrc" (directory-file-name (getenv "HOME"))))
(find-file
 (expand-file-name ".zshrc" (directory-file-name (getenv "HOME"))))
(find-file (expand-file-name "init.el" user-emacs-directory))
(find-file user-emacs-directory)

(provide 'init-startup-buffers)
