(require 'package)

(add-to-list 'package-archives
    '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(defvar my-packages '(paredit
    clojure-mode
    clojure-mode-extra-font-locking
    cider
    ido-completing-read+
    smex
    rainbow-delimiters
    magit
    company
    which-key
    neotree
    projectile
    clj-refactor
    elpy
    ))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-refresh-contents)
    (package-install p))
  (add-to-list 'package-selected-packages p))

(add-to-list 'load-path "~/.emacs.d/custom")
(load "settings.el")
(load "clojure.el")
(load "python_lords.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (elpy projectile neotree which-key company magit rainbow-delimiters smex ido-completing-read+ cider clojure-mode-extra-font-locking clojure-mode paredit))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
