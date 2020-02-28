//Package triangle classifies triangles by type.
package triangle

import "math"

//Kind represents the category of triangle.
type Kind uint

//These are the categories.
const (
	NaT Kind = 0 // Not a Triangle
	Equ Kind = 1 // equilateral
	Iso Kind = 2 // isosceles
	Sca Kind = 3 // scalene
)

//KindFromSides returns the type of triangle based on the sides.
func KindFromSides(a, b, c float64) Kind {
	var k Kind = NaT

	if math.IsInf(a+b+c, 0) {
		k = NaT
	} else if math.IsNaN(a + b + c) {
		k = NaT
	} else if (a+b < c) || (a+c < b) || (b+c < a) {
		k = NaT
	} else if a <= 0 || b <= 0 || c <= 0 {
		k = NaT
	} else if a == b && b == c {
		k = Equ
	} else if a == b || a == c || b == c {
		k = Iso
	} else if a != b && a != c && b != c {
		k = Sca
	}
	return k
}
