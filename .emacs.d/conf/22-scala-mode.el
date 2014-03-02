;; scala-mode2
;; https://github.com/hvesalai/scala-mode2
(when (require 'scala-mode2 nil t)
  (add-hook
   'scala-mode-hook
   (lambda ()
      ;; == key-bind ==
      ;; (local-set-key (kbd "RET") 'newline-and-indent)
      ;; (local-set-key (kbd "RET") 'reindent-then-newline-and-indent)
      (local-set-key
       (kbd "RET")
       '(lambda ()
          (interactive)
          (newline-and-indent)
          (scala-indent:insert-asterisk-on-multiline-comment)))

      ;; (local-set-key (kbd "C-M-j") 'join-line)
      (local-set-key (kbd "<backtab>") 'scala-indent:indent-with-reluctant-strategy)

      ;; and other bindings here

      ;; == option ==
      (defvar scala-indent:use-javadoc-style t)
      (setq scala-indent:use-javadoc-style t)

      ;; == whitespace ==
      (require 'whitespace)
      (add-hook 'before-save-hook 'whitespace-cleanup)

      ;; highlight whitespaces
      ;; (whitespace-mode)

      ))
  ;; ENSIME
  ;; https://github.com/aemoncannon/ensime
  (require 'ensime)
  (add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
  )
