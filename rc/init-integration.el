;; Browse URLs in a real browser
(setq browse-url-browser-function 'browse-url-generic)
(setq browse-url-generic-program "chromium-browser")

(hansd/package-install 'magit)
(use-package magit)



(provide 'init-integration)
