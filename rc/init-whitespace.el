(defun hansd/delete-trailing-whitespace ()
      "Apply delete-trailing-whitespace to everything but the current line."
      (interactive)
      (let ((first-part-start (point-min))
            (first-part-end (point-at-bol))
            (second-part-start (point-at-eol))
            (second-part-end (point-max)))
        (delete-trailing-whitespace first-part-start first-part-end)
        (delete-trailing-whitespace second-part-start second-part-end)))

;; Ban whitespace at end of lines, globally.
(add-hook 'write-file-hooks
          '(lambda ()
             (hansd/delete-trailing-whitespace)))

;; show whitespace
(use-package 'whitespace)
(setq whitespace-style '(trailing lines tab-mark))
(setq whitespace-line-column 80)
(global-whitespace-mode 1)
(eval-after-load "diminish"
  '(progn
     (eval-after-load "whitespace"
       '(diminish 'global-whitespace-mode "ᗣ"))
     (eval-after-load "whitespace"
       '(diminish 'whitespace-mode ""))))


(provide 'init-whitespace)
