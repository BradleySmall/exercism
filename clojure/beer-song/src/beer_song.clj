(ns beer-song)


(defn verse
  "Returns the nth verse of the song."
  [num]
  (cond 
    (= num 0) (str "No more bottles of beer on the wall, no more bottles of beer.\n"
                   "Go to the store and buy some more, 99 bottles of beer on the wall.\n") 
    (= num 1) (format "%d bottle of beer on the wall, %d bottle of beer.\nTake it down and pass it around, %s bottles of beer on the wall.\n" num num "no more") 
    (= num 2) (format "%d bottles of beer on the wall, %d bottles of beer.\nTake one down and pass it around, %d bottle of beer on the wall.\n" num num (- num 1))
    :else  (format "%d bottles of beer on the wall, %d bottles of beer.\nTake one down and pass it around, %d bottles of beer on the wall.\n" num num (- num 1))))


(defn sing
  "Given a start and an optional end, returns all verses in this interval. If
  end is not given, the whole song from start is sung."
  ([start]       (sing start 0))
  ([start end]   (clojure.string/join "\n" (for [x (range start (- end 1) -1)] (verse x)))))
