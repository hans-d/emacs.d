(require 'package)


;; add additional repositories
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives
	     '("org" . "http://orgmode.org/elpa/"))


;; make sure we have content
(when (not package-archive-contents)
  (package-refresh-contents))


;; make usuable in older versions
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))


;; Use M-x package-refresh-contents to reload the list of packages
(package-initialize)


;; easy install
(defun hansd/package-install (package &optional repository)
  "Install PACKAGE if missing. Use REPOSITORY if specified"
  (message "checking %s" package)
  (unless (package-installed-p package)
    (message "Installing %s" package)
    (let (
      (package-archives (if repository
			    (list (assoc repository package-archives))
			  package-archives)))
      (package-install package))))


; https://github.com/jwiegley/use-package
(hansd/package-install 'use-package)
(require 'use-package)


; force install if missing + use-package
(defmacro hansd/package-require (package &rest body)
  (progn
    (hansd/package-install package)
    (use-package package body)))


(defmacro hansd/package-buildin (package &rest body)
  (message "buildin %s" package)
  (use-package package ,@body))


; nicer eval-after-load
(defmacro after (mode &rest body)
  "'eval-after-load' MODE evaluate BODY."
  (declare (indent defun))
  `(eval-after-load ',mode
     '(progn ,@body)))


;; fix mac path
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))

;; provide
(provide 'init-package-load)
