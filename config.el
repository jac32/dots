(defun my/init-config ()
  "Configuration which should be run during startup"
  (setq inhibit-splash-screen t)
  (exec-path-from-shell-initialize)
  (load-theme 'zenburn t)
  (menu-bar-mode -1))

(defun my/prog-mode-hook ()
  "Configuration which should run for all programming modes"
  (require 'rainbow-delimiters)
  (rainbow-delimiters-mode t))

(defun my/hooks ()
  "Register my various hooks with Emacs"
  (add-hook 'prog-mode-hook 'my/prog-mode-hook))

(defun my/lsp-config ()
  "Configure the Emacs LSP client"
  (require 'lsp-mode)
  (require 'lsp-ui)
  (add-hook 'lsp-mode-hook 'lsp-ui-mode))

(defun my/rust-config ()
  "Configuration specific to the Rust programming language"
  (require 'rust-mode)
  (require 'cargo)
  (require 'lsp-mode)
  (require 'lsp-rust)
  (defun my/rust-mode-hook ()
    "Configuration to be run when entering Rust mode"
    (lsp-rust-enable)
    (cargo-minor-mode))
  (with-eval-after-load 'lsp-mode
    (setq lsp-rust-rls-command '("rls"))
    (add-hook 'rust-mode-hook #'my/rust-mode-hook)))

(my/init-config)
(my/lsp-config)
(my/rust-config)
(my/hooks)
