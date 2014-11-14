;; keep modeline mode references short

;; show cursor position
(column-number-mode 1)


(setq-default mode-line-format
 '("%e"
   mode-line-front-space
   mode-line-mule-info
   mode-line-client
   mode-line-modified
   mode-line-remote
   mode-line-position
   " " mode-line-buffer-identification
   " " (vc-mode vc-mode)
   " " persp-modestring
   "   " mode-name "--" minor-mode-alist
   mode-line-frame-identification
   mode-line-process
   mode-line-misc-info
   mode-line-end-spaces))

; diminish
(hansd/package-install 'diminish)
(use-package diminish
  :config 
  (progn 
    (after guide-key (diminish 'guide-key-mode "?"))
    (after rainbow-mode (diminish 'rainbow-mode "ω"))
    (after undo-tree (diminish 'undo-tree-mode "⇄"))
    (after whitespace 
      (diminish 'global-whitespace-mode "⎵")
      (diminish 'whitespace-mode "⎵"))
    (after whitespace-cleanup-mode (diminish 'whitespace-cleanup-mode "⚡"))
    ))

(provide 'init-modeline)
