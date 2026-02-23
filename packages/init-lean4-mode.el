;; [emacsdir/packages] init-lean4-mode

(use-package lean4-mode
  :straight
  (lean4-mode
   :type git
   :host github
   :repo "leanprover-community/lean4-mode"
   :files ("*.el" "data")))

(provide 'init-lean4-mode)
