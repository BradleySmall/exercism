def is_pangram(sentence):
    return {letter.lower() for letter in sentence
            if letter.isalpha()}.__len__() == 26
