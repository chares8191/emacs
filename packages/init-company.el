;; [emacsdir/packages] init-company

(use-package company
  :straight t
  ;; :hook (prog-mode . company-mode)
  :custom
  (company-backends
   '(company-capf
	 company-keywords
	 company-dabbrev-code
	 company-dabbrev
	 company-files))
  (company-dabbrev-ignore-case nil)
  (company-dabbrev-code-ignore-case nil))

(provide 'init-company)
