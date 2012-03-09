;; Rinari (Rails-mode)
(require 'rinari nil t)

;; haml-mode
(when (require 'haml-mode nil t)
  (add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode)))

;; sass-mode
(when (require 'sass-mode nil t)
  (add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode)))

