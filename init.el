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

(setq gc-cons-threshold 100000000)
(setq read-process-output-max (* 1024 1024)) ;; 1mb

(straight-use-package 'use-package)
(setq straight-use-package-by-default t)
(require 'bind-key)

(use-package autorevert
  :config
  ;; Also auto refresh dired, but be quiet about it
  (setq global-auto-revert-non-file-buffers t)
  (setq auto-revert-verbose nil)
  :init
  (global-auto-revert-mode t))
(use-package align-cljlet)
(use-package company
  :diminish company-mode
  :defer 1000
  :config
  (global-company-mode 1)
  (setq company-minimum-prefix-length 1
        company-idle-delay 0.1))
(use-package company-lsp
  :config (push 'company-lsp company-backends)
  :defer t
  :custom (company-lsp-cache-candidates 'auto))
(use-package csv-mode)
(use-package dash)
(use-package dockerfile-mode)
(use-package drag-stuff)
(use-package elixir-mode)
(use-package debian-el)
(use-package dpkg-dev-el
  :mode
  ("/debian/*NEWS" . debian-changelog-mode)
  ("NEWS.Debian" . debian-changelog-mode)
  ("/debian/\\([[:lower:][:digit:]][[:lower:][:digit:].+-]+\\.\\)?changelog\\'" . debian-changelog-mode)
  ("changelog.Debian" . debian-changelog-mode)
  ("changelog.dch" . debian-changelog-mode)
  ("/debian/control\\'" . debian-control-mode)
  ("debian/.*copyright\\'" . debian-copyright-mode)
  ("\\`/usr/share/doc/.*/copyright" . debian-copyright-mode)
  ("debian/.*README.*Debian$" . readme-debian-mode)
  ("^/usr/share/doc/.*/README.*Debian.*$" . readme-debian-mode))
(use-package exec-path-from-shell)
(use-package expand-region)
(use-package f)
(use-package find-file-in-repository
  :bind ("C-x C-f" . find-file-in-repository))
(use-package fish-mode)
(use-package floobits)
(use-package flycheck)
(use-package flycheck-pyflakes)
(use-package go-mode)
(use-package haskell-mode)
(use-package htmlize)
(use-package idle-highlight-mode)
(use-package jedi)
(use-package js2-mode)
(use-package magit
  :bind ("C-x g" . magit-status))
(use-package forge
  :after (magit))
(use-package lsp-mode
  :init (setq lsp-keymap-prefix "C-l")
  :hook ((haskell-mode . lsp)
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)
(use-package lsp-ui
  :after lsp-mode
  :diminish
  :config
  (flycheck-add-next-checker 'lsp-ui 'haskell-hlint)
  (setq lsp-ui-doc-use-webkit t)
  :commands lsp-ui-mode)
(use-package lsp-haskell
 :config
 (setq lsp-haskell-process-path-hie "haskell-language-server")
 (setq lsp-haskell-process-args-hie '())
 ;; Comment/uncomment this line to see interactions between lsp client/server.
 ;;(setq lsp-log-io t)
 )
(use-package lsp-treemacs
  :commands lsp-treemacs-errors-list)
(use-package markdown-mode)
(use-package midnight
  :defer 1000
  :init (midnight-mode t))
(use-package multiple-cursors)
(use-package nginx-mode)
(use-package nix-mode)
(use-package org
  :init
  (setq org-log-done 'time))
(use-package ormolu)
(use-package paredit
  :hook (clojure-mode . paredit-mode))
(use-package popwin)
(use-package powerline)
(use-package prodigy)
(use-package projectile)
(use-package puppet-mode)
(use-package py-isort)
(use-package python-docstring
  :hook (python-mode . python-docstring-mode))
(use-package rainbow-delimiters
  :hook (clojure-mode . rainbow-delimiters-mode))
(use-package s)
(use-package sass-mode)
(use-package scss-mode)
(use-package smartparens)
(use-package smex)
(use-package secrets)
(use-package solarized-theme)
(use-package terraform-mode
  :config
  (add-hook 'terraform-mode-hook #'terraform-format-on-save-mode))
(use-package toml-mode)
(use-package web-mode)
(use-package which-key
  :diminish
  :config (which-key-mode))
(use-package whitespace-cleanup-mode
  :diminish whitespace-cleanup-mode
  :init
  (setq whitespace-cleanup-mode-only-if-initially-clean nil
        whitespace-line-column 80
        whitespace-style '(face lines-tail))
  :config
  (global-whitespace-mode)
  (global-whitespace-cleanup-mode))
(use-package yaml-mode)
(use-package yasnippet)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auth-sources
   (quote
    ("secrets:Login" "~/.authinfo" "~/.authinfo.gpg" "~/.netrc")))
 '(auto-save-default nil)
 '(clean-buffer-list-delay-general 1)
 '(column-number-mode t)
 '(create-lockfiles nil)
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
    ("2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" default)))
 '(debian-changelog-mailing-address "mithrandi@debian.org")
 '(desktop-save t)
 '(desktop-save-mode t)
 '(fill-column 79)
 '(flycheck-disabled-checkers
   (quote
    (python-pylint javascript-jshint haskell-ghc haskell-stack-ghc)))
 '(flycheck-eslintrc ".eslintrc.yaml")
 '(flycheck-highlighting-mode (quote columns))
 '(flycheck-hlintrc ".hlint.yaml")
 '(global-flycheck-mode t nil (flycheck))
 '(global-linum-mode t)
 '(gnutls-verify-error t)
 '(haskell-font-lock-symbols t)
 '(haskell-indentation-show-indentations-after-eol nil)
 '(haskell-mode-hook
   (quote
    (capitalized-words-mode haskell-indentation-mode haskell-doc-mode lsp ormolu-format-on-save-mode)))
 '(ido-enable-flex-matching t)
 '(ido-mode (quote both) nil (ido))
 '(indent-tabs-mode nil)
 '(js-indent-level 2)
 '(js2-strict-missing-semi-warning nil)
 '(js3-auto-indent-p t)
 '(js3-enter-indents-newline t)
 '(js3-indent-level 4)
 '(js3-indent-on-enter-key t)
 '(lsp-file-watch-ignored
   (quote
    ("[/\\\\]\\.git$" "[/\\\\]\\.hg$" "[/\\\\]\\.bzr$" "[/\\\\]_darcs$" "[/\\\\]\\.svn$" "[/\\\\]_FOSSIL_$" "[/\\\\]\\.idea$" "[/\\\\]\\.ensime_cache$" "[/\\\\]\\.eunit$" "[/\\\\]node_modules$" "[/\\\\]\\.fslckout$" "[/\\\\]\\.tox$" "[/\\\\]\\.stack-work$" "[/\\\\]\\.bloop$" "[/\\\\]\\.metals$" "[/\\\\]target$" "[/\\\\]\\.deps$" "[/\\\\]build-aux$" "[/\\\\]autom4te.cache$" "[/\\\\]\\.reference$" "[/\\\\]dist$" "[/\\\\]dist-newstyle$")))
 '(lsp-prefer-flymake nil)
 '(lsp-ui-doc-header nil)
 '(lsp-ui-doc-include-signature nil)
 '(lsp-ui-doc-position (quote at-point))
 '(lsp-ui-doc-use-childframe t)
 '(lsp-ui-doc-use-webkit nil)
 '(lsp-ui-flycheck-enable t)
 '(lsp-ui-sideline-ignore-duplicate t)
 '(lsp-ui-sideline-show-hover t)
 '(magit-branch-prefer-remote-upstream (quote ("master")))
 '(magit-diff-arguments (quote ("--no-ext-diff" "--stat" "-M20%" "-C20%")))
 '(magit-diff-section-arguments (quote ("--no-ext-diff" "-M20%" "-C20%")))
 '(magit-fetch-arguments (quote ("--prune")))
 '(magit-wip-after-apply-mode t)
 '(magit-wip-after-save-mode t)
 '(magit-wip-before-change-mode t)
 '(make-backup-files nil)
 '(ormolu-extra-args
   (split-string "--ghc-opt -XArrows --ghc-opt -XMagicHash --ghc-opt -XPatternSynonyms --ghc-opt -XRecursiveDo --ghc-opt -XTypeApplications"))
 '(py-isort-options nil)
 '(require-final-newline (quote visit))
 '(sentence-end-double-space nil)
 '(server-mode t)
 '(shell-file-name "/bin/zsh")
 '(show-trailing-whitespace t)
 '(tool-bar-mode nil)
 '(web-mode-code-indent-offset 2)
 '(web-mode-markup-indent-offset 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((((class color) (min-colors 89)) (:foreground "#839496" :background "#002b36"))))
 '(smerge-base ((t (:background "#888833" :foreground "gray10"))))
 '(smerge-refined-added ((t (:inherit smerge-refined-change :background "#22aa22" :foreground "gray10")))))
(exec-path-from-shell-initialize)
(setenv "GOPATH" "$HOME" t)

(put 'test-case-name 'safe-local-variable 'symbolp)
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

(setq python-environment-directory "~/deployment/virtualenvs")


(add-to-list 'auto-mode-alist '("\\.jsx?\\'" . web-mode))
(setq web-mode-content-types-alist
  '(("jsx" . "\\.jsx?\\'")))
(flycheck-add-mode 'javascript-eslint 'web-mode)
(add-hook 'web-mode-hook
          (lambda ()
            (when (equal web-mode-content-type "jsx")
              ;; enable flycheck
              (flycheck-select-checker 'javascript-eslint)
              (flycheck-mode))))
(flycheck-define-checker python-twistedchecker
  "A Python syntax and style checker using twistedchecker."
  :command ("twistedchecker"
            ;; Need `source-inplace' for relative imports (e.g. `from .foo
            ;; import bar'), see https://github.com/flycheck/flycheck/issues/280
            source-inplace)
  :error-filter
  (lambda (errors)
    (flycheck-sanitize-errors (flycheck-increment-error-columns errors)))
  :error-patterns
  ((error line-start (or "E" "F") (id (one-or-more (not (any ":")))) ":"
          (zero-or-more " ") line "," column ":" (message) line-end)
   (warning line-start (or "W" "R" "C") (id (one-or-more (not (any ":")))) ":"
            (zero-or-more " ") line "," column ":" (message) line-end))
  :modes 'python-mode)
(add-to-list 'flycheck-checkers 'python-twistedchecker 'append)
(flycheck-add-next-checker 'python-twistedchecker 'python-flake8)
(add-hook 'python-mode-hook
          (lambda () (flycheck-select-checker 'python-flake8)))

;; 
;; Local Variables:
;; flycheck-disabled-checkers: (emacs-lisp emacs-lisp-checkdoc)
;; End:
