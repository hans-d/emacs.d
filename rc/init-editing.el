(require 'init-whitespace)
(require 'init-autocomplete)
(require 'init-modes)

;; UTF-8
(prefer-coding-system 'utf-8)
(when (display-graphic-p)
  (setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING)))

;; Replace selected text
(delete-selection-mode 1)

;; Show matching parenthese and the contained expression
(show-paren-mode 1)
(setq show-paren-style 'expression)
;; and add them directly
(electric-pair-mode 1)

(provide 'init-editing)
