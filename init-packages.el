;; org
(use-package org :ensure t :config (require 'org))

;; melpa
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list
 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; elisp-autofmt
(use-package
 elisp-autofmt
 :commands (elisp-autofmt-mode elisp-autofmt-buffer)
 :hook (emacs-lisp-mode . elisp-autofmt-mode))

(setq elisp-autofmt-python-bin "python3")

;; gruvbox-theme
(require 'gruvbox-theme)
(load-theme 'gruvbox-dark-soft t)

;; osm
(use-package
 osm
 :bind ("C-c m" . osm-prefix-map) ;; Alternatives: `osm-home' or `osm'
 :custom
 ;; Take a look at the customization group `osm' for more options.
 (osm-server 'default) ;; Configure the tile server
 (osm-copyright t) ;; Display the copyright information
 :config
 ;; Add custom servers, see also https://github.com/minad/osm/wiki
 ;; (osm-add-server 'myserver
 ;;   :name "My tile server"
 ;;   :group "Custom"
 ;;   :description "Tiles based on aerial images"
 ;;   :url "https://myserver/tiles/%z/%x/%y.png?apikey=%k")
 )

;; maces-game
(require 'maces-game)
