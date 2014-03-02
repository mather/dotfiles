;; scala-mode
(when (require 'scala-mode-auto nil t)
  (add-to-list 'auto-mode-alist '("\\.scala$" . scala-mode))
  )

