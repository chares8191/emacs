;; [emacsdir/packages] init-kotlin-mode

(declare-function lsp-register-client "lsp-mode")
(declare-function make-lsp-client "lsp-mode")
(declare-function lsp-stdio-connection "lsp-mode")

(use-package kotlin-mode
  :straight t
  :mode "\\.kts?\\'"
  :hook (kotlin-mode . lsp-deferred)
  :custom
  (kotlin-tab-width 4))

(defun init-kotlin-mode--register-kotlin-lsp ()
  (lsp-register-client
   (make-lsp-client
	:new-connection
	(lsp-stdio-connection
	 (lambda ()
	   (list "kotlin-lsp" "--stdio")))
	:major-modes '(kotlin-mode kotlin-ts-mode)
	:priority 10
	:server-id 'kotlin-official-lsp
	:download-server-fn
	(lambda (_client _callback _error-callback _update?)
	  (user-error "Kotlin LSP is managed outside Emacs (kotlin-lsp)"))
	)))

(with-eval-after-load 'lsp-mode
  (add-to-list 'lsp-language-id-configuration
			   '(kotlin-mode . "kotlin"))
  (when (fboundp 'kotlin-ts-mode)
	(add-to-list 'lsp-language-id-configuration
				 '(kotlin-ts-mode . "kotlin")))
  (add-to-list 'lsp-disabled-clients 'kotlin-ls)
  (init-kotlin-mode--register-kotlin-lsp))

(provide 'init-kotlin-mode)
