;; [emacsdir/chares] chares-convert-to-geo

(defun chares-convert-to-geo (coords)
  (interactive "sCoordinates: ")
  (let* ((parts (split-string coords "[[:space:]]+" t))
         (lat-str (car parts))
         (long-str (cadr parts))
         (lat-parts (split-string lat-str "[°′'″\"]"))
         (long-parts (split-string long-str "[°′'″\"]")))
    (when (or (/= (length parts) 2)
              (/= (length lat-parts) 4)
              (/= (length long-parts) 4))
      (error "Invalid DMS format, expected: deg°min'sec\"N deg°min'sec\"E"))
    (let* ((lat-deg (string-to-number (nth 0 lat-parts)))
           (lat-min (string-to-number (nth 1 lat-parts)))
           (lat-sec (string-to-number (nth 2 lat-parts)))
           (lat-dir (nth 3 lat-parts))
           (long-deg (string-to-number (nth 0 long-parts)))
           (long-min (string-to-number (nth 1 long-parts)))
           (long-sec (string-to-number (nth 2 long-parts)))
           (long-dir (nth 3 long-parts))
           (lat-dec
            (* (if (string= (upcase lat-dir) "S")
                   -1
                 1)
               (+ lat-deg (/ lat-min 60.0) (/ lat-sec 3600.0))))
           (long-dec
            (* (if (string= (upcase long-dir) "W")
                   -1
                 1)
               (+ long-deg (/ long-min 60.0) (/ long-sec 3600.0))))
           (result
            (format "geo:%.6f,%.6f;z=17;s=opentopomap"
                    lat-dec
                    long-dec)))
      (kill-new result)
      (message "Converted and copied to clipboard: %s" result)
      result)))

(provide 'chares-convert-to-geo)
