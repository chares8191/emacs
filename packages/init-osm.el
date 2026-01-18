;; [.emacs.d/packages] init-osm
(use-package osm
  :straight t
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

(provide 'init-osm)
