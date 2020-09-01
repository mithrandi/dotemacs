;; Bootstrap just enough to load configuration from a "literate" org-mode file

(setq straight-cache-autoloads t
      straight-fix-flycheck t)

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)
(setq straight-use-package-by-default t)

;; Install org-mode
(straight-use-package 'org)

;; Load configuration
;; TODO: Figure out how to make byte compilation work?
(let ((config-el (expand-file-name "config.el" user-emacs-directory))
      (config-org (expand-file-name "config.org" user-emacs-directory)))
  (if (and (file-exists-p config-el)
           (time-less-p (file-attribute-modification-time (file-attributes config-org))
                        (file-attribute-modification-time (file-attributes config-el))))
        (load-file config-el)
    (org-babel-load-file config-org)))

;; 
;; Local Variables:
;; flycheck-disabled-checkers: (emacs-lisp emacs-lisp-checkdoc)
;; End:
