;; solarized theme - only install, no require
(hansd/package-install 'color-theme-solarized)
(load-theme 'solarized-dark t)

(face-spec-set 'persp-selected-face
	       '((t (:weight bold :foreground nil))))

(provide 'init-theme)
