//Package leap calculates leap years.
package leap

//IsLeapYear takes in a year and returns its leap status.
func IsLeapYear(year int) bool {
	return (year%4 == 0) && (year%100 > 0 || year%400 == 0)
}
