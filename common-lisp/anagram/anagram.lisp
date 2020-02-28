;;(in-package #:cl-user)

(defpackage #:anagram
  (:use #:common-lisp)
  (:export #:anagrams-for))

(in-package #:anagram)

(defun anagrams-for (str list-arg)
  "anagrams-for takes a string and a list and returns a list of its anagrams."
  (flet ((make-comparable (word)
           (sort (copy-seq word) #'string-lessp)))
    (loop :with presorted-str = (make-comparable str) 
      :for word :in list-arg
          :when (and (string-not-equal str word)
                     (string-equal (make-comparable word)
                                   presorted-str))
            :collect  word)))
