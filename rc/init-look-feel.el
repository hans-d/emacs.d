;; global layout
;; Get more screen space asap
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-screen t)

;; Minibuffer can use some space
(setq resize-mini-windows t)
(setq max-mini-window-height 0.33)

(require 'init-tmux)
(require 'init-mouse)
(require 'init-modeline)
(require 'init-windows)
(require 'init-backup)
(require 'init-theme)

;; Show line numbers everywhere
(global-linum-mode t)

;; Make it easier to answer questions.
(fset 'yes-or-no-p 'y-or-n-p)

;; I don't need to kill emacs that easily
;; the mnemonic is C-x REALLY QUIT
(global-set-key (kbd "C-x r q") 'save-buffers-kill-terminal)
(global-set-key (kbd "C-x C-c") 'delete-frame)

;; https://github.com/nex3/perspective-el
(hansd/package-install 'perspective)
(use-package perspective
  :config (progn 
	    (persp-mode)
	    (setq global-mode-string (delq 'persp-modestring global-mode-string))))


;; Visual undo/redo
;; use C-x u (undo-tree-visualize) to visually walk through the changes you've made
(hansd/package-install 'undo-tree)
(use-package undo-tree
  :config
  (progn
    (global-undo-tree-mode)
    (setq undo-tree-visualizer-timestamps t)
    (setq undo-tree-visualizer-diff t)))

;; get some help
;; https://github.com/kai2nenobu/guide-key
(hansd/package-install 'guide-key)
(use-package guide-key
  :config
  (setq guide-key/guide-key-sequence '("C-x r" "C-x 4" "C-c" "C-x x"))
  (guide-key-mode t))

;; https://github.com/browse-kill-ring/browse-kill-ring
(hansd/package-install 'browse-kill-ring)
(use-package browse-kill-ring
  :config
  (progn 
    (browse-kill-ring-default-keybindings) ;; M-y
    (setq browse-kill-ring-quit-action 'save-and-restore)))


(provide 'init-look-feel)
