;; color-theme
(when (require 'color-theme nil t)
  (color-theme-initialize)
  (if (eq window-system nil)
      (color-theme-euphoria)
    (color-theme-robin-hood)))


