;; Variables
(defvar my-zettelkasten-dir "/webdav/notes"
  "Path to zettelkasten directory.")

;; Functions
(defun jonas/open-notes ()
  "Open zettelkasten directory in dired."
  (interactive)
  (dired my-zettelkasten-dir))

;; Helpers
(global-set-key (kbd "C-c z") #'jonas/open-notes)

;; Org mode
(with-eval-after-load 'org
  (define-key org-mode-map (kbd "C-c t") #'org-todo)
  (define-key org-mode-map (kbd "C-c TAB") #'org-cycle)
  (define-key org-mode-map (kbd "C-c l") #'org-insert-link))

(provide 'keybinds)
