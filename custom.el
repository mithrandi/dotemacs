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
