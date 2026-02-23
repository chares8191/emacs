;; [emacsdir/packages] init-agda-mode

(let ((agda-file
       (car
        (ignore-errors
          (process-lines "agda" "--emacs-mode" "locate")))))
  (when (and agda-file (file-exists-p agda-file))
    (load-file agda-file)))

(setq auto-mode-alist (cons '("\\.lagda.md$" . agda2-mode) auto-mode-alist))

(use-package agda-lib-mode
  :straight t)

(provide 'init-agda-mode)
