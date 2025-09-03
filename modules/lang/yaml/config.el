;;; lang/yaml/config.el -*- lexical-binding: t; -*-

(use-package! yaml-mode
  :mode "Procfile\\'"
  :config
  (when (modulep! +lsp)
    (add-hook 'yaml-mode-local-vars-hook #'lsp! 'append))
  (setq-hook! 'yaml-mode-hook tab-width yaml-indent-offset))


(use-package! yaml-ts-mode  ; 29.1+ only
  :when (modulep! +tree-sitter)
  :defer t
  :init
  (set-tree-sitter! 'yaml-mode 'yaml-ts-mode)
  :config
  (when (modulep! +lsp)
    (add-hook 'yaml-ts-mode-local-vars-hook #'lsp! 'append)))
