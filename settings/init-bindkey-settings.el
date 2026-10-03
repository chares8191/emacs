;; [emacsdir/settings] init-bindkey-settings -*- lexical-binding: t; -*-

;; regexp search by default
;; (global-set-key (kbd "C-s") 'isearch-forward-regexp)
;; (global-set-key (kbd "C-r") 'isearch-backward-regexp)
;; (global-set-key (kbd "M-%") 'query-replace-regexp)

(global-set-key (kbd "s-<left>") #'beginning-of-line)
(global-set-key (kbd "s-<right>") #'end-of-line)
(global-set-key (kbd "s-<up>") #'beginning-of-buffer)
(global-set-key (kbd "s-<down>") #'end-of-buffer)

;; org-mode
(with-eval-after-load 'org
  (keymap-set org-mode-map "C-c h" #'org-fold-hide-subtree))

(provide 'init-bindkey-settings)
