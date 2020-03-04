(in-package #:cl-user)
(defpackage #:word-count
  (:use #:cl)
  (:export #:count-words))
(in-package #:word-count)

(defun split-string (string &optional (delims '(#\space)))
  (labels ((split-string-r (string delims list)
             (let ((pos-delim (position-if (lambda (char) (position char delims)) string)))
               (if pos-delim
                   (split-string-r (subseq string  (+ 1  pos-delim)) delims (push (subseq string 0 pos-delim) list))
                   (push string list)))))
    (split-string-r string delims '())))

(defun count-words (sentence)
  (loop
     :with res-list = '()
     :for x :in (split-string sentence '(#\Space #\, #\Newline #\Return))
     :for word := (string-downcase (string-trim "'!@#$%^&*()_+:;{}|,.-=`~<>?/" x))
     :for comp := (assoc word res-list :test #'string-equal)
     :if comp :do (incf (cdr comp))
     :else :when (/= 0 (length word)) :do (setf res-list (acons word 1 res-list))
     :finally (return res-list)))
