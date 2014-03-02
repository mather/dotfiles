; 言語を日本語にする
(set-language-environment "Japanese")
;; UTF-8
(prefer-coding-system 'utf-8)

;; Mac OS X
(when (eq system-type 'darwin)
  (require 'ucs-normalize)
  (set-file-name-coding-system 'utf-8-hfs)
  (setq locale-coding-system 'utf-8-hfs))

;; Windows
(when (eq window-system 'w32)
  (set-file-name-coding-system 'cp932)
  (setq locale-coding-system 'cp932))


(set-face-attribute 'default nil
                   :family "Ricty"
                   :height 140)
(set-fontset-font
 nil 'japanese-jisx0208
 (font-spec :family "Ricty"))
