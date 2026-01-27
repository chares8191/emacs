;; [init-load][emacsdir/const] :: init-load-const
(message "[init-load][emacsdir/const] :: started")

(defconst emacsdir
  (file-name-as-directory
   (expand-file-name
	(directory-file-name user-emacs-directory))))

(defconst emacsdir/straight
  (file-name-as-directory
   (expand-file-name
	(file-name-concat
	 (directory-file-name user-emacs-directory)
	 (directory-file-name "straight")))))

(defconst emacsdir/settings
  (file-name-as-directory
   (expand-file-name
	(file-name-concat
	 (directory-file-name user-emacs-directory)
	 (directory-file-name "settings")))))

(defconst emacsdir/packages
  (file-name-as-directory
   (expand-file-name
	(file-name-concat
	 (directory-file-name user-emacs-directory)
	 (directory-file-name "packages")))))

(defconst emacsdir/chares
  (file-name-as-directory
   (expand-file-name
	(file-name-concat
	 (directory-file-name user-emacs-directory)
	 (directory-file-name "chares")))))

(defconst emacsdir/startup
  (file-name-as-directory
   (expand-file-name
	(file-name-concat
	 (directory-file-name user-emacs-directory)
	 (directory-file-name "startup")))))

(message "[init-load][emacsdir/const] :: complete")
(provide 'init-load-const)
