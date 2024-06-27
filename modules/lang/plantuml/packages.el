;; -*- no-byte-compile: t; -*-
;;; lang/plantuml/packages.el

(package! plantuml-mode :pin "ea45a13707abd2a70df183f1aec6447197fc9ccc")
(when (modulep! :checkers syntax)
  (if (modulep! :checkers syntax +flymake)
      (package! flymake-plantuml
        :recipe (:host github :repo "shaohme/flymake-plantuml")
        :pin "9afc6b78e914b31581d6364d81228e8c8b5f4fb8")
    (package! flycheck-plantuml :pin "183be89e1dbba0b38237dd198dff600e0790309d")))

;; ob-plantuml is provided by org-plus-contrib
