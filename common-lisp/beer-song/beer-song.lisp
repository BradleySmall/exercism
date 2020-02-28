(in-package #:cl-user)
(defpackage #:beer
  (:use #:common-lisp)
  (:export #:verse #:sing))

(in-package #:beer)

(defun verse (beer-verse)
  "verse returns a single verse of the beer song."
  (cond
    ((= beer-verse 0)
      (format nil "No more bottles of beer on the wall, no more bottles of beer.~&~
        Go to the store and buy some more, 99 bottles of beer on the wall.~%"))
    ((= beer-verse 1)
      (format nil "1 bottle of beer on the wall, 1 bottle of beer.~&~
        Take it down and pass it around, no more bottles of beer on the wall.~%"))
    ((= beer-verse 2)
      (format nil "2 bottles of beer on the wall, 2 bottles of beer.~&~
        Take one down and pass it around, 1 bottle of beer on the wall.~%"))
    (t  
      (format nil "~A bottles of beer on the wall, ~A bottles of beer.~&~
        Take one down and pass it around, ~A bottles of beer on the wall.~%"
              beer-verse beer-verse (- beer-verse 1)))))

(defun sing (begin-verse &optional (end-verse 0))
  "sing returns the beer song, from begin verse to the end verse"
  (loop :for beer-verse :downfrom begin-verse :to end-verse :by 1
        :collect (verse beer-verse) :into result
        :finally (return (format nil "~{~A~%~}" result))))
