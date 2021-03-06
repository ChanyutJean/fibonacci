(defvar phi (/ (+ 1 (sqrt 5l0)) 2))
(defvar psi (/ (- 1 (sqrt 5l0)) 2))
(defvar index (parse-integer (nth 0 *args*)))
(if (or (< index 1) (> index 84)) 
    ((print "Index must be a positive integer between 1 and 84.")
    (ext:exit))
)
(write (round (/ (- (expt phi index) (expt psi index)) (- phi psi))))