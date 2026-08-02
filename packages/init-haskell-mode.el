;; [emacsdir/packages] init-haskell-mode

;; https://github.com/tibbe/haskell-style-guide
(defun haskell-style ()
  "Sets the current buffer to use Haskell Style. Meant to be
  added to `haskell-mode-hook'"
  (interactive)
  (setq tab-width 4
        haskell-indentation-layout-offset 4
        haskell-indentation-left-offset 4
        haskell-indentation-ifte-offset 4))

(use-package haskell-mode
  :straight t
  :hook
  ((haskell-mode . haskell-style)
   (haskell-mode . lsp-deferred)
   (haskell-literate-mode . lsp-deferred)))

(provide 'init-haskell-mode)
