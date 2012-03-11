;; YATEX (野鳥)
;; yatex-mode を起動させる設定
(add-to-list 'auto-mode-alist (cons "\\.tex$" 'yatex-mode))
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)

;; costumize for Mac OS X
(setq tex-command "~/Library/TeXShop/bin/platex2pdf-utf8")
(setq dvi2-command "open -a Skim")

