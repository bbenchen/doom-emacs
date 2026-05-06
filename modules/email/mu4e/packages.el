;; -*- no-byte-compile: t; -*-
;;; email/mu4e/packages.el

(package! mu4e-compat
  :recipe (:host github :repo "bbenchen/mu4e-compat")
  :pin "552e656504756e5ef2eea0475b88070cd2cab540")
(when (modulep! +org)
  (package! org-msg :pin "aa608b399586fb771ad37045a837f8286a0b6124"))
