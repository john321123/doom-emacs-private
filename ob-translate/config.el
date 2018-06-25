;;; private/ob-translate/init.el -*- lexical-binding: t; -*-
(after! org
  (require 'org)
  (require 'google-translate)
  (require 'ob-translate)
  (add-to-list 'org-babel-load-languages '(translate . t))
  (org-babel-do-load-languages 'org-babel-load-languages org-babel-load-languages)
  ;; add translate special block into structure template alist.
  (add-to-list 'org-structure-template-alist '("t" "#+BEGIN_SRC translate\n?\n#+END_SRC"))
  (setq google-translate-base-url  "https://translate.google.cn/translate_a/single")
  (setq google-translate-listen-url  "https://translate.google.cn/translate_tts")
  (setq google-translate--tkk-url "https://translate.google.cn/")
)
