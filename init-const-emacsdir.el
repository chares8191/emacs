;; [emacsdir] init-const-emacsdir
(message "[emacsdir] init-const-emacsdir :: started")

(defconst emacsdir/straight
  (directory-file-name
   (expand-file-name
	(file-name-concat emacsdir "straight"))))

(defconst emacsdir/settings
  (directory-file-name
   (expand-file-name
	(file-name-concat emacsdir "settings"))))

(defconst emacsdir/packages
  (directory-file-name
   (expand-file-name
	(file-name-concat emacsdir "packages"))))

(defconst emacsdir/chares
  (directory-file-name
   (expand-file-name
	(file-name-concat emacsdir "chares"))))

(defconst emacsdir/startup
  (directory-file-name
   (expand-file-name
	(file-name-concat emacsdir "startup"))))

(defconst emacsdir/snippets
  (directory-file-name
   (expand-file-name
	(file-name-concat emacsdir "snippets"))))

(defconst emacsdir/mode-samples
  (directory-file-name
   (expand-file-name
	(file-name-concat emacsdir "mode-samples"))))

(message "[emacsdir] init-const-emacsdir :: complete")
(provide 'init-const-emacsdir)
