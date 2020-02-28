def convert(number):
    conc_dict = {3: "Pling", 5: "Plang", 7: "Plong"}

    hold = ""
    for fact, name in conc_dict.items():
        if number % fact == 0:
            hold += name

    return hold or str(number)
