;; [emacsdir/startup] init-startup-window

(setq inhibit-startup-screen t)
;; (split-window-vertically)
(dired emacsdir)
(split-window-horizontally)
(dired homedir)

(provide 'init-startup-window)
