(ns armstrong-numbers)

(defn sum-digits-to-power [n] 
  (->> n
       str
       (map #(Character/getNumericValue %))
       (map #(.pow (biginteger %) (count (str n))))
       (apply +)))

(defn armstrong? [num]
  (= num (sum-digits-to-power num)))
