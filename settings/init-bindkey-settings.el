;; [.emacs.d/settings] init-bindkey-settings

;; TODO: forward-subword-cursor = left-word [ M-<right> ]
;; TODO: forward-word-cursor [ C-<right> ]
;; TODO: forward-line-cursor = end-of-line [ s-<right> ]
(global-set-key (kbd "s-<right>") #'end-of-line)

;; TODO: backward-subword-cursor = right-word [ M-<left> ]
;; TODO: backward-word-cursor [ C-<left> ]
;; TODO: backward-line-cursor = beginning-of-line [ s-<left> ]
(global-set-key (kbd "s-<left>") #'beginning-of-line)

(global-set-key (kbd "s-<up>") #'beginning-of-buffer)
(global-set-key (kbd "s-<down>") #'end-of-buffer)

(provide 'init-bindkey-settings)
