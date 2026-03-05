;; [emacsdir] init-const-homedir
(message "[emacsdir] init-const-homedir :: started")

(defconst homedir/local
  (directory-file-name
   (expand-file-name
	(file-name-concat homedir ".local"))))

(defconst homedir/xdg-cache-home
  (directory-file-name
   (expand-file-name
	(or (getenv "XDG_CACHE_HOME")
		(file-name-concat homedir ".cache")))))

(defconst homedir/xdg-config-home
  (directory-file-name
   (expand-file-name
	(or (getenv "XDG_CONFIG_HOME")
		(file-name-concat homedir ".config")))))

(defconst homedir/xdg-data-home
  (directory-file-name
   (expand-file-name
	(or (getenv "XDG_DATA_HOME")
		(file-name-concat homedir ".local" "share")))))

(defconst homedir/xdg-state-home
  (directory-file-name
   (expand-file-name
	(or (getenv "XDG_STATE_HOME")
		(file-name-concat homedir ".local" "state")))))

(message "[emacsdir] init-const-homedir :: complete")
(provide 'init-const-homedir)
