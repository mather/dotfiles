;; anything
;; (auto-install-batch 'anything) to install
;; M-x auto-install-batch RET anything RET

(when (require 'anything nil t)

  ;; anything-config
  (when (require 'anything-config nil t)
    (setq anything-su-or-sudo "sudo"))

  ;; anything-match-plugin
  (require 'anything-match-plugin nil t)

  ;; anything-migemo
  (when (and (executable-find "cmigemo")
             (require 'migemo nil t))
    (require 'anything-migemo nil t))

  ;; anything-complete
  (when (require 'anything-complete nil t)
    (anything-lisp-complete-symbol-set-timer 150))

  (require 'anything-show-completion nil t)

  (when (require 'descbinds-anything nil t)
    (descbinds-anything-install)))