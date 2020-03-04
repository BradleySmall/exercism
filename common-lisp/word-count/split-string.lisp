(defun split-string (string  &optional (delims '(#\space #\return #\newline #\,)) (list '()))
  (let ((pos-delim
         (position-if (lambda (char) (position char delims)) string)))
    (if pos-delim
        (progn (push (subseq string 0 pos-delim) list)
               (split-string (subseq string  (+ 1  pos-delim)) delims list))
        (push string list))))
