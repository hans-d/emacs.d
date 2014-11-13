(require 'init-whitespace)
(require 'init-autocomplete)
(require 'init-modes)

;; UTF-8
(prefer-coding-system 'utf-8)
(when (display-graphic-p)
  (setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING)))

;; When you start typing and text is selected, replace it with what you are typing, or pasting, or whatever.
(delete-selection-mode 1)



(provide 'init-edit-pref)
