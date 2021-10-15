(defun bin-search (seq e)
  (loop
     with l = 0 and r = (1- (length seq))
     do (let* ((m (floor (+ l r) 2)) (mth (nth m seq)))
	  (if (<= mth e)
	      (setf l m)
	      (setf r m)))
     until (<= (- r l) 1)
     finally (cond
	       ((= (nth l seq) e) (return l))
	       ((= (nth r seq) e) (return r)))))
