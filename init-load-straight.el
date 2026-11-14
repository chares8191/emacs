;; [emacsdir] init-load-straight -*- lexical-binding: t; -*-
(message "[emacsdir] init-load-straight :: started")


;; https://github.com/radian-software/straight.el/blob/develop/README.md
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; replace use-package with straight-use-package
(straight-use-package 'use-package)
(use-package straight
  :custom (straight-use-package-by-default t))

;; enable package-list-packages
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(message "[emacsdir] init-load-straight :: complete")
(provide 'init-load-straight)
