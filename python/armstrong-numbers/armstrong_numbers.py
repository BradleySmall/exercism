def is_armstrong_number(number):
    digits = list(map(int, str(number)))
    count = len(digits)
    sum_raised_digits = sum([d**count for d in digits])
    return sum_raised_digits == number
