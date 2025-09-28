;; Load org mode

(use-package org
  :ensure t
  :hook ((org-mode . visual-line-mode)     ;; wrap lines nicely
         (org-mode . org-indent-mode))     ;; clean indentation
  :config
  ;; Better heading bullets (requires org-modern or org-superstar)
  (use-package org-superstar
    :ensure t
    :hook (org-mode . org-superstar-mode))

  ;; Show inline images after evaluating a block
  (setq org-startup-with-inline-images t)
  (setq org-image-actual-width nil) ;; scale to window

  ;; Hide emphasis markers (*bold* → bold, no stars shown)
  (setq org-hide-emphasis-markers t)

  ;; Start folded, except top-level headings
  (setq org-startup-folded 'content)

  ;; Use syntax highlighting in code blocks
  (setq org-src-fontify-natively t
        org-src-tab-acts-natively t
        org-edit-src-content-indentation 0)

  ;; Confirm before evaluating code blocks
  (setq org-confirm-babel-evaluate t)

  ;; Enable a few languages in org-babel
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((emacs-lisp . t)
     (python . t)
     (shell . t)))

  ;; Pretty UTF-8 symbols (like → instead of =>)
  (use-package org-modern
    :ensure t
    :hook (org-mode . org-modern-mode)))

(provide 'init-org)
