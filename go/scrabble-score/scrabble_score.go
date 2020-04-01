package scrabble

import "unicode"

// Score converts a string into its integer scrabble score.
func Score(str string) int {
	var accumulator = 0
	for _, letter := range str {
		var score = 0
		switch unicode.ToUpper(letter) {
		case 'A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T':
			score = 1
		case 'D', 'G':
			score = 2
		case 'B', 'C', 'M', 'P':
			score = 3
		case 'F', 'H', 'V', 'W', 'Y':
			score = 4
		case 'K':
			score = 5
		case 'J', 'X':
			score = 8
		case 'Q', 'Z':
			score = 10
		default:
			score = 0
		}
		accumulator += score
	}
	return accumulator
}
