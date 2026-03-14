;; [emacsdir/chares] chares-convert-cmyk

(defun chares/convert-cmyk (c m y k)
  "Convert CMYK to RGB for pastel."
  (interactive
   (list
	(read-number "C (0-100): ")
	(read-number "M (0-100): ")
	(read-number "Y (0-100): ")
	(read-number "K (0-100): ")))
  (let* ((c (/ c 100.0))
		 (m (/ m 100.0))
		 (y (/ y 100.0))
		 (k (/ k 100.0))
		 (r (round (* 255 (- 1 c) (- 1 k))))
		 (g (round (* 255 (- 1 m) (- 1 k))))
		 (b (round (* 255 (- 1 y) (- 1 k))))
		 (result (format "rgb(%d,%d,%d)" r g b)))
	(kill-new result)
	(message "Converted: %s" result)
	result))

(provide 'chares-convert-cmyk)
