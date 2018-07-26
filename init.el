(require 'package)
(setq package-enable-at-startup nil)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("marmalade" . "https://marmalade-repo.org/packages/")
			 ("gnu" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(when (not package-archive-contents)
    (package-refresh-contents))

(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

(load-file (expand-file-name "~/.emacs.d/config.el"))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("190a9882bef28d7e944aa610aa68fe1ee34ecea6127239178c7ac848754992df" "7f896fc9f543ff1aae2e038d55af35d0743782c49223df96c6757eb5fd65411e" "f27c3fcfb19bf38892bc6e72d0046af7a1ded81f54435f9d4d09b3bff9c52fc1" "62c81ae32320ceff5228edceeaa6895c029cc8f43c8c98a023f91b5b339d633f" "a5956ec25b719bf325e847864e16578c61d8af3e8a3d95f60f9040d02497e408" "cd4d1a0656fee24dc062b997f54d6f9b7da8f6dc8053ac858f15820f9a04a679" default)))
 '(package-selected-packages
   (quote
    (zenburn-theme darktooth-theme cargo lsp-rust lsp-ui rust-mode lsp-mode benchmark-init rainbow-delimiters rainbow-identifiers gruvbox-theme yasnippet web-mode use-package smex smartparens projectile prodigy popwin pallet nyan-mode multiple-cursors magit idle-highlight-mode htmlize flycheck-cask expand-region exec-path-from-shell drag-stuff))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
