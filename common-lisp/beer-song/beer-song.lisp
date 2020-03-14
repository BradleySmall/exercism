(in-package #:cl-user)
(defpackage #:beer
  (:use #:common-lisp)
  (:export #:verse #:sing))

(in-package #:beer)

(defun verse (beer-verse)
  "verse returns a single verse of the beer song."
  (cond
    ((> beer-verse 0)  
      (format nil "~A bottle~:p of beer on the wall, ~A bottle~:p of beer.~&~
        Take ~[it~:;one~] down and pass it around, ~:[no more~;~:*~A~] bottle~:p of beer on the wall.~%"
              beer-verse beer-verse (- beer-verse 1) (if (zerop (- beer-verse 1)) nil (- beer-verse 1))))
    ((= beer-verse 0)
      (format nil "No more bottles of beer on the wall, no more bottles of beer.~&~
        Go to the store and buy some more, 99 bottles of beer on the wall.~%"))))

(defun sing (begin-verse &optional (end-verse 0))
  "sing returns the beer song, from begin verse to the end verse"
  (loop :for beer-verse :downfrom begin-verse :to end-verse :by 1
        :collect (verse beer-verse) :into result
        :finally (return (format nil "~{~A~%~}" result))))
