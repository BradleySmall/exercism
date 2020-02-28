import fact


def classify(number):
    if number < 1:
        raise ValueError('Must be > 0')
    if not isinstance(number, int):
        raise ValueError('Must be natural number')

    aliquot = sum(fact.fact(number)[:-1])
    if aliquot == number:
        return 'perfect'
    if aliquot > number:
        return 'abundant'
    if aliquot < number:
        return 'deficient'
