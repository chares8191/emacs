;; local home path
(defvar path:home (expand-file-name (directory-file-name (getenv "HOME"))))

;; local emacs path
(defvar path:emacs (expand-file-name (directory-file-name user-emacs-directory)))

;; user elisp files path
(defvar path:user
  (expand-file-name
   (directory-file-name (concat user-emacs-directory "user"))))

(provide 'init-path)
