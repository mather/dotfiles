;; scala-mode
(when (require 'scala-mode nil t)
  (add-to-list 'auto-mode-alist '("\\.scala$" . scala-mode)))

