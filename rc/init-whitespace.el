;; show whitespace
;; http://www.emacswiki.org/emacs/WhiteSpace
(use-package whitespace
  :init (progn
    (setq whitespace-style '(face trailing lines tab-mark empty))
    (setq whitespace-line-column 80)
    (global-whitespace-mode t)))

; (setq whitespace-space 'underline)

;; auto clean
;; https://github.com/purcell/whitespace-cleanup-mode
(hansd/package-install 'whitespace-cleanup-mode)
(use-package whitespace-cleanup-mode
  :config (message "config")
  :init   (global-whitespace-cleanup-mode t))

(provide 'init-whitespace)
