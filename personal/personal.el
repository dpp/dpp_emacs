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
