;; Cmd-C, Cmd-V を使う
;;(mac-key-mode 1)
;; Option キーで Metaを使う。
(setq mac-option-modifier 'meta)

;; バッテリー表示
;;(display-battery-mode)

;; Ricty
(set-face-attribute 'default nil :family "Ricty" :height 140)
(set-fontset-font "fontset-default" 'japanese-jisx0208 '("Ricty" . "iso10646-*"))
