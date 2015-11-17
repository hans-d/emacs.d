;; solarized theme - only install, no require
(hansd/package-install 'color-theme-sanityinc-solarized)
(load-theme 'sanityinc-solarized-dark t)

(face-spec-set 'persp-selected-face
	       '((t (:weight bold :foreground nil))))

(provide 'init-theme)
