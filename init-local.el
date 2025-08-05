;; local home path
(defvar path:home
  (expand-file-name (directory-file-name (getenv "HOME"))))

;; local emacs path
(defvar path:emacs (expand-file-name user-emacs-directory))

;; package elisp files path
(defvar path:elpa
  (expand-file-name
   (directory-file-name (concat user-emacs-directory "elpa"))))

;; user elisp files path
(defvar path:user
  (expand-file-name
   (directory-file-name (concat user-emacs-directory "user"))))
