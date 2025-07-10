;;; my-man.el --- Fullscreen man page viewer -*- lexical-binding: t; -*-

(require 'man)

(defun my/fullscreen-man (topic)
  "Open man page for TOPIC in full screen and restore window layout when done."
  (interactive (list (read-string "Man page: ")))
  (let ((config (current-window-configuration)))
    (man topic)
    (let ((man-buffer (get-buffer (format "*Man %s*" topic))))
      (when man-buffer
        (switch-to-buffer man-buffer)
        (delete-other-windows)
        (with-current-buffer man-buffer
          (add-hook 'kill-buffer-hook
                    (lambda ()
                      (set-window-configuration config))
                    nil t))))))

(provide 'my-man)
;;; my-man.el ends here

