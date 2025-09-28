(use-package vterm
  :ensure t
  :commands vterm
  :config
  (setq vterm-shell "/bin/bash"))

(global-set-key (kbd "C-c v") #'vterm)

(provide 'terminal)
