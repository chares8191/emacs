;; [emacsdir/packages] init-agda-mode

(defun agda-mode-path ()
  (ignore-errors
	(process-lines "agda" "--emacs-mode" "locate")))

(let ((agda-file (car (agda-mode-path))))
  (when (and agda-file (file-exists-p agda-file))
    (load-file agda-file)))

(setq auto-mode-alist
	  (append
	   '(("\\.agda\\'" . agda2-mode)
		 ("\\.lagda.md\\'" . agda2-mode))
	   auto-mode-alist))

(use-package agda-lib-mode
  :straight t)

(provide 'init-agda-mode)
