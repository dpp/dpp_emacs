(setq prelude-guru nil)

(menu-bar-mode t)

(load-theme 'tsdh-dark)

(setq inhibit-startup-screen t)

(if (display-graphic-p)
    (progn
      (tool-bar-mode -1)
      (scroll-bar-mode -1)))

(require 'auto-complete)

(add-to-list 'ac-modes 'clojure-mode)

(setenv "LEIN_JVM_OPTS" "-XX:+UseG1GC")

(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (clojure . t)
   (visi . t)
   ))

(setq org-confirm-babel-evaluate nil)

;; Make windmove work in org-mode:
(add-hook 'org-shiftup-final-hook 'windmove-up)
(add-hook 'org-shiftleft-final-hook 'windmove-left)
(add-hook 'org-shiftdown-final-hook 'windmove-down)
(add-hook 'org-shiftright-final-hook 'windmove-right)
