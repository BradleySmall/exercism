//Package proverb pens proverb rhyme.
package proverb

import "fmt"

//Proverb returns the string for the proverb.
func Proverb(rhyme []string) []string {
	if len(rhyme) == 0 {
		return []string{}
	}

	var lastStr = fmt.Sprintf("And all for the want of a %s.", rhyme[0])
	retVal := []string{}

	if len(rhyme) > 1 {
		for i := 0; i+1 < len(rhyme); i++ {
			s := fmt.Sprintf("For want of a %s the %s was lost.", rhyme[i], rhyme[i+1])
			retVal = append(retVal, s)
		}
	}
	retVal = append(retVal, lastStr)
	return retVal
}
