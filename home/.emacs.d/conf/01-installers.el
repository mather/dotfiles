;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; auto-install.el
;; cd .emacs.d/elisp/
;; wget http://www.emacswiki.org/emacs/download/auto-install.el
(when (require 'auto-install nil t)
  (setq auto-install-directory "~/.emacs.d/elisp/")
  (auto-install-update-emacswiki-package-name t)
  ;;(setq url-proxy-services '(("http" . "localhost:8022")))
  (auto-install-compatibility-setup))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; package.el
;; M-x install-elisp http://tromey.com/elpa/package-install.el
(when (require 'package nil t)
  ;; Marmalade repos
  (add-to-list 'package-archives
               '("Marmalade" . "http://marmalade-repo.org/packages/"))
  ;; ELPA repos
  (add-to-list 'package-archives
               '("ELPA" . "http://tromey.com/elpa/"))
  (package-initialize))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; auto-async-byte-compile.el
;; M-x install-elisp-from-emacswiki auto-async-byte-compile.el
(when (require 'auto-async-byte-compile nil t)
  (setq auto-async-byte-compile-exclude-files-regexp "init.el")
  (add-hook 'emacs-lisp-mode-hook 'enable-auto-async-byte-compile-mode))
