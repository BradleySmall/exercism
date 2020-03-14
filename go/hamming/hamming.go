// Package hamming measures the difference between 2 different dna strands.
package hamming

import (
	"errors"
)

// Distance measures the differences between the arguments and returns the number of differences.
// In the event that they are not the same length and error is returned.
func Distance(a, b string) (int, error) {
	if len(a) != len(b) {
		return 0, errors.New("not the same length")
	}
	count := 0
	for i := 0; i < len(a); i++ {
		if a[i] != b[i] {
			count++
		}
	}
	return count, nil
}
