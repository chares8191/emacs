;; [emacsdir/startup] init-startup-window

(setq inhibit-startup-screen t)
;; (split-window-vertically)
(dired homedir)
(split-window-horizontally)
(dired emacsdir)

(provide 'init-startup-window)
