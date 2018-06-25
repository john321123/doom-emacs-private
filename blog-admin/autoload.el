;;; private/blog-admin/autoload.el -*- lexical-binding: t; -*-

;;;###autoload
(defun hexo ()
  "Activate (or switch to) `blog-admin' in its workspace."
  (interactive)
  (require 'blog-admin)
  (call-interactively 'blog-admin-start))

