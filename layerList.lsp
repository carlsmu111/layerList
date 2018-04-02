(defun c:layerList ()
  (setq f (open "layerlist.txt" "w"))
  (setq layer (tblnext "LAYER" T))
  (princ layer)
  (while layer
    (write-line (cdr (assoc 2 layer)) f)
    (setq layer (tblnext "LAYER"))
  )
  (close f)
)
