;; [.emacs.d/packages] init-agda-mode

(let ((agda-file
	   (car (ignore-errors (process-lines "agda-mode" "locate")))))
  (when (and agda-file (file-exists-p agda-file))
	(load-file agda-file)))

(provide 'init-agda-mode)

