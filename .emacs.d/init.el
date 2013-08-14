;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; load-path
;; for Emacs 22 or older
(when (< emacs-major-version 23)
  (defvar user-emacs-directory "~/.emacs.d/"))

;; add load-path recursively
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
              (expand-file-name (concat user-emacs-directory path))))
        (add-to-list 'load-path default-directory)
        (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
            (normal-top-level-add-subdirs-to-load-path))))))

;; add directories to load-path
(add-to-load-path "elisp" "conf" "public_repos" "elpa")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; init-loader.el
;; wget "http://coderepos.org/share/browser/lang/elisp/init-loader/init-loader.el?format=txt" -O init-loader.el
(require 'init-loader)
(init-loader-load "~/.emacs.d/conf")

;;; *.~ とかのバックアップファイルを作らない
;;(setq make-backup-files nil)

;;; .#* とかのバックアップファイルを作らない
;;(setq auto-save-default nil)


;; 前回までの編集位置を保存する
(load "saveplace")
(setq-default save-place t)

;; TAB文字は使わない
(setq-default indent-tabs-mode nil)
(setq indent-tabs-mode nil)

;; 行末の空白を保存時に削除
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; reject opening messages
(setq inhibit-startup-message t)

;; Interactively Do Things (highly recommended, but not strictly required)
(when (require 'ido nil t)
  (ido-mode t))

;; 現在行の強調
;;(global-hl-line-mode nil)

;; paren-mode(対応する括弧の強調)
(setq show-paren-delay 0)
(show-paren-mode t)
;; 対応する括弧まですべて強調
(setq show-paren-style 'expression)
;; フェイスを設定
(set-face-foreground 'show-paren-match-face nil)
(set-face-background 'show-paren-match-face nil)
(set-face-underline-p 'show-paren-match-face "white")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(display-battery-mode t)
 '(display-time-mode t)
 '(show-paren-mode t)
 '(size-indication-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; eval-after-autoload
;; https://gist.github.com/cvmat/3499459
;;
;; Example with after-body.
;; (eval-after-autoload-if-found
;;  '(cycle-buffer cycle-buffer-backward) "cycle-buffer" nil t nil
;;  (setq cycle-buffer-allow-visible t)
;;  (setq cycle-buffer-show-length 12)
;;  (setq cycle-buffer-show-format '(" <(%s)>" . " %s")))
;;
;; Example without after-body.
;; (eval-after-autoload-if-found 'smooth-scrolling "smooth-scrolling" nil t)
;;
(defmacro eval-after-autoload-if-found (functions file &optional docstring interactive type &rest after-body)
  "Set up autoload and eval-after-load for FUNCTIONS iff. FILE has found."
  `(let* ((functions ,functions)
          (docstring ,docstring)
          (interactive ,interactive)
          (type ,type)
          (file ,file))
     (when (locate-library file)
       (mapc (lambda (func)
               (autoload func file docstring interactive type))
             (if (listp functions)
                 functions
               (list functions)))
       ,@(when after-body
           `((eval-after-load file '(progn ,@after-body))))
       t)))
