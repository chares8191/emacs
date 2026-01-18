;; [.emacs.d/packages] init-company

(use-package company
  :straight t
  :hook
  (prog-mode . company-mode)
  :custom
  (company-dabbrev-ignore-case nil)
  (company-dabbrev-code-ignore-case nil)
  (company-backends
   '(company-capf
	 company-keywords
	 company-dabbrev-code
	 company-dabbrev
	 company-files)))

(provide 'init-company)
