// Package twofer provides exercise to output a string.
package twofer

import "fmt"

//ShareWith provides the string filling in for whom.
func ShareWith(name string) string {
	if name == "" {
		name = "you"
	}
	return fmt.Sprintf("One for %s, one for me.", name)
}
