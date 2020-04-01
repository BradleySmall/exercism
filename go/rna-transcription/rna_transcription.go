package strand

var trans = map[rune]rune{
	'G': 'C',
	'C': 'G',
	'T': 'A',
	'A': 'U',
}

// ToRNA converst dna to rna.
func ToRNA(dna string) string {
	rna := ""

	for _, c := range dna {
		rna += string(trans[c])
	}
	return rna
}
