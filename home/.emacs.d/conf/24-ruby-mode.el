;; Ruby 2.x ではマジックコメントが不要
(add-hook 'ruby-mode-hook
          '(setq ruby-insert-encoding-magic-comment nil))
