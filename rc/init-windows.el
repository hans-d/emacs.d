;; Window configuration control
(winner-mode t)

;; navigation
;; http://www.emacswiki.org/emacs/WindMove
(use-package windmove
  :bind
  (("<C-c> <right>" . windmove-right)
   ("<C-c> <left>" . windmove-left)
   ("<C-c> <up>" . windmove-up)
   ("<C-c> <down>" . windmove-down)))


;; http://www.reddit.com/r/emacs/comments/25v0eo/you_emacs_tips_and_tricks/chldury
(defun hansd/vsplit-last-buffer (prefix)
  "Split the window vertically and display the previous buffer."
  (interactive "p")
  (split-window-vertically)
  (other-window 1 nil)
  (unless prefix (switch-to-next-buffer)))

(defun hansd/hsplit-last-buffer (prefix)
  "Split the window horizontally and display the previous buffer."
  (interactive "p")
  (split-window-horizontally)
  (other-window 1 nil)
  (unless prefix (switch-to-next-buffer)))

(bind-key "C-x 2" 'hansd/vsplit-last-buffer)
(bind-key "C-x 3" 'hansd/hsplit-last-buffer)


(provide 'init-windows)
