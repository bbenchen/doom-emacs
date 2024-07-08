;; -*- no-byte-compile: t; -*-
;;; emacs/vc/packages.el

(package! vc :built-in t)
(package! vc-annotate :built-in t)
(package! smerge-mode :built-in t)

(package! browse-at-remote :pin "76aa27dfd469fcae75ed7031bb73830831aaccbf")
(package! git-commit :pin "9d1f8db507e080e032943a3ed1445bd8d9aaa9fc")
(package! git-timemachine
  ;; The original lives on codeberg.org; which has uptime issues.
  :recipe (:host github :repo "emacsmirror/git-timemachine")
  :pin "3780835fcd67c3703ffa768206121851e6895ece")
(package! git-modes :pin "7901415b39bef1b789d161ca2c10dfb910d13780")
