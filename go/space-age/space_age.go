package space

/*Planet type represents the name of a planet.*/
type Planet string

var earthSeconds = 31557600.0
var n = map[string]float64{
	"Mercury": 0.2408467,
	"Venus":   0.61519726,
	"Earth":   1.0,
	"Mars":    1.8808158,
	"Jupiter": 11.862615,
	"Saturn":  29.447498,
	"Uranus":  84.016846,
	"Neptune": 164.79132,
}

/*Age returns earth years relative to planet and age seconds.*/
func Age(seconds float64, planet Planet) float64 {
	earthYears := seconds / earthSeconds
	return earthYears / n[string(planet)]
}
