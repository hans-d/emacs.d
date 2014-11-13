; autocomplete
(use-package 'fuzzy)
(use-package 'auto-complete)
(use-package 'auto-complete-config)
(ac-config-default)
(setq ac-auto-start nil)
(ac-set-trigger-key "TAB")
(eval-after-load "diminish"
  '(progn
     (eval-after-load "auto-complete"
       '(diminish 'auto-complete-mode "↝"))))


(provide 'init-autocomplete)
