package scrabble

import "unicode"

// Score converts a string into its integer scrabble score.
func Score(str string) int {
	var accumulator = 0
	for _, c := range str {
		switch unicode.ToUpper(c) {
		case 'D', 'G':
			accumulator += 2
		case 'B', 'C', 'M', 'P':
			accumulator += 3
		case 'F', 'H', 'V', 'W', 'Y':
			accumulator += 4
		case 'K':
			accumulator += 5
		case 'J', 'X':
			accumulator += 8
		case 'Q', 'Z':
			accumulator += 10
		default:
			accumulator++
		}
	}
	return accumulator
}

/*

Original
=== RUN   TestScore
--- PASS: TestScore (0.00s)
goos: linux
goarch: amd64
pkg: scrabble
BenchmarkScore
BenchmarkScore-8          658520              1815 ns/op
    80 B/op            9 allocs/op
PASS
ok      scrabble        1.929s
*/
/*
unicode.ToUpper()
=== RUN   TestScore
--- PASS: TestScore (0.00s)
goos: linux
goarch: amd64
pkg: scrabble
BenchmarkScore
BenchmarkScore-8          889408              1338 ns/op
     0 B/op            0 allocs/op
PASS
ok      scrabble        1.891s
*/
/*
switch/case
=== RUN   TestScore
--- PASS: TestScore (0.00s)
goos: linux
goarch: amd64
pkg: scrabble
BenchmarkScore
BenchmarkScore-8         2665728               443 ns/op
     0 B/op            0 allocs/op
PASS
ok      scrabble        1.643s
*/
