;; [emacsdir/settings] init-performance-settings

(setq gc-cons-threshold  (* 64 (* 1024 1024)))
(setq read-process-output-max (* 16 (* 1024 1024)))

(provide 'init-performance-settings)
