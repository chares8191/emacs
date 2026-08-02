;; [emacsdir/packages] :: init-mode-minder

;; https://github.com/jdtsmith/mode-minder
(defun mode-minder-path ()
  (expand-file-name
   (directory-file-name "mode-minder")
   (directory-file-name emacsdir/packages)))

(let ((mode-minder-file (expand-file-name "mode-minder.el" (mode-minder-path))))
  (if (file-readable-p mode-minder-file)
      (progn
        (add-to-list 'load-path (mode-minder-path))
        (require 'mode-minder))
    (message "[emacsdir/packages] init-mode-minder :: skipped")))

(provide 'init-mode-minder)
