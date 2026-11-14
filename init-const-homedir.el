;; [emacsdir] init-const-homedir -*- lexical-binding: t; -*-
(message "[emacsdir] init-const-homedir :: started")

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

(defconst homedir/xdg-bin-home
  (directory-file-name
   (expand-file-name
	(or (getenv "XDG_BIN_HOME")
		(file-name-concat homedir ".local" "bin")))))

(defconst homedir/xdg-src-home
  (directory-file-name
   (expand-file-name
	(or (getenv "XDG_SRC_HOME")
		(file-name-concat homedir ".local" "src")))))

(message "[emacsdir] init-const-homedir :: complete")
(provide 'init-const-homedir)
