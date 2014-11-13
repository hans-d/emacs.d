;; Let the mousewheel move the cursor in a sane manner.
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
    (setq mouse-wheel-progressive-speed nil)

;; Make it easier to answer questions.
(fset 'yes-or-no-p 'y-or-n-p)

;; under tmux, restore normal key behaviour
(require 'init-tmux-keys)

;; solarized theme
(hansd/package-install 'color-theme-solarized)
(load-theme 'solarized-dark t)

;; Make it really obvious where the 80th column sits.
(setq-default fill-column 80)

;; Show line numbers everywhere, and count columns
(global-linum-mode 1)
(column-number-mode 1)

;; Browse URLs in a real browser
(setq browse-url-browser-function 'browse-url-generic)
(setq browse-url-generic-program "chromium-browser")

;; Minibuffer often displays so much information, even temporarily, that it is nice to give it some room to breath.
(setq resize-mini-windows t)
(setq max-mini-window-height 0.33)

;; keep modeline clutterfree
(require 'diminish)


(provide 'init-look-feel)
