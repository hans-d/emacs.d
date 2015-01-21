;; rainbow mode
;; https://julien.danjou.info/projects/emacs-packages#rainbow-mode
(use-package rainbow-mode)


(hansd/package-install 'coffee-mode)
(use-package coffee-mode)
(custom-set-variables
 '(coffee-tab-width 4))

(hansd/package-install 'literate-coffee-mode)
(use-package literate-coffee-mode)

(hansd/package-install 'jade-mode)
(use-package jade-mode)
(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))


;; src
(use-package yaml-mode)

(provide 'init-modes)
