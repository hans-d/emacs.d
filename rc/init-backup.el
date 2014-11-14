;; keep backup files in central place
(setq backup-by-copying t)
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

;; number backups and retain old
(setq version-control t)
(setq vc-make-backup-files t)
(setq delete-old-versions t)
(setq kept-new-versions 50)
(setq kept-old-versions 0)

(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/auto-save-list/" t)))

;; cleanup logic
(defun hansd/clean-backup ()
  (message "Deleting old backup files...")
  (let ((week (* 60 60 24 7))
        (current (float-time (current-time))))
    (dolist (file (directory-files temporary-file-directory t))
      (when (and (backup-file-name-p file)
                 (> (- current (float-time (fifth (file-attributes file))))
                    (* 2 week)))
        (message "%s" file)
        (delete-file file)))))

;; cleanup now
(hansd/clean-backup)

(provide 'init-backup)
