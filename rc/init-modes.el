;; modes

;; org mode - many things
;; http://orgmode.org
(use-package org)


;; rainbow mode - displays strings representing colors
;;    with the color they represent as background
;; https://julien.danjou.info/projects/emacs-packages#rainbow-mode
(use-package rainbow-mode)


;; coffee mode - coffeescript
;; https://github.com/defunkt/coffee-mode
(hansd/package-install 'coffee-mode)
(use-package coffee-mode)
(custom-set-variables
 '(coffee-tab-width 4))


;; literate coffee mode - literate coffeescript
;; https://github.com/syohex/emacs-literate-coffee-mode
(hansd/package-install 'literate-coffee-mode)
(use-package literate-coffee-mode)


;; jade mode - jade
;; https://github.com/brianc/jade-mode
(hansd/package-install 'jade-mode)
(use-package jade-mode)
(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))


;; yaml mode - yaml
;; https://github.com/hans-d/emacs-yaml-mode
;; mod of https://github.com/yoshiki/yaml-mode
;; in src
(use-package yaml-mode)

(provide 'init-modes)
