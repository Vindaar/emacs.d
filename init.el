;; enable MELPA package repository
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
;;(when (< emacs-major-version 27)
  ;; only call package-initialize when emacs major version < 27
(package-initialize)


;; Botstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; load the custom settings created by emacs automatically
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file :noerror)

(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))
