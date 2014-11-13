;;; load-packages.el --- install repos and packages

;; based on:
;; - http://toumorokoshi.github.io/emacs-from-scratch-part-2-package-management.html
;; - https://github.com/sachac/.emacs.d/blob/gh-pages/Sacha.org

(require 'package)

;; add additional repositories
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)

(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

;; Use M-x package-refresh-contents to reload the list of packages
(package-initialize)


;; easy install
(defun hansd/package-install (package &optional repository)
  "Install PACKAGE if missing. Use REPOSITORY if specified"
    (unless (package-installed-p package)
    (let ((package-archives (if repository
                                (list (assoc repository package-archives))
                              package-archives)))
    (package-install package))))

(defmacro after (mode &rest body)
  "`eval-after-load' MODE evaluate BODY."
  (declare (indent defun))
  `(eval-after-load ,mode
     '(progn ,@body)))


(hansd/package-install 'use-package)
(require 'use-package)

;; provide
(provide 'init-packages)
