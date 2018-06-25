;;; private/nov/config.el -*- lexical-binding: t; -*-

(add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode))
(setq nov-text-width 80)
(setq nov-text-width most-positive-fixnum)
(setq visual-fill-column-center-text t)
(add-hook 'nov-mode-hook 'visual-line-mode)
(add-hook 'nov-mode-hook 'visual-fill-column-mode)

;(require! justify-kp)
;(setq nov-text-width most-positive-fixnum)

;(defun my-nov-window-configuration-change-hook ()
;  (my-nov-post-html-render-hook)
;  (remove-hook 'window-configuration-change-hook
;               'my-nov-window-configuration-change-hook
;               t))

;(defun my-nov-post-html-render-hook ()
;  (if (get-buffer-window)
;      (let ((max-width (pj-line-width))
;            buffer-read-only)
;        (save-excursion
;          (goto-char (point-min))
;          (while (not (eobp))
;            (when (not (looking-at "^[[:space:]]*$"))
;              (goto-char (line-end-position))
;              (when (> (shr-pixel-column) max-width)
;                (goto-char (line-beginning-position))
;                (pj-justify)))
;            (forward-line 1))))
;    (add-hook 'window-configuration-change-hook
;              'my-nov-window-configuration-change-hook
;              nil t)))
;
;(add-hook 'nov-post-html-render-hook 'my-nov-post-html-render-hook)
