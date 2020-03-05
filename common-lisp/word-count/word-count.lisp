(in-package #:cl-user)
(defpackage #:word-count
  (:use #:cl)
  (:export #:count-words))
(in-package #:word-count)

(defun split-string (string &optional (delims '(#\space)))
  (labels ((recurse (string  list)
             (let ((pos-delim (position-if (lambda (char) (member char delims)) string)))
               (if pos-delim
                   (recurse (subseq string  (1+ pos-delim)) (push (subseq string 0 pos-delim) list))
                   (push string list)))))
    (recurse string '())))

(defun count-words (sentence)
  (loop
     :with res-list = '()
     :for x :in (split-string sentence '(#\Space #\, #\Newline #\Return))
     :for word := (string-downcase (string-trim "'!@#$%^&*()_+:;{}|,.-=`~<>?/" x))
     :for comp := (assoc word res-list :test #'string-equal)
     :if comp :do (incf (cdr comp))
     :else :when (/= 0 (length word)) :do (setf res-list (acons word 1 res-list))
     :finally (return res-list)))
