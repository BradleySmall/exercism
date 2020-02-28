protein_dict = {
    "AUG": "Methionine",
    "UUU": "Phenylalanine",
    "UUC": "Phenylalanine",
    "UUA": "Leucine",
    "UUG": "Leucine",
    "UCU": "Serine",
    "UCC": "Serine",
    "UCA": "Serine",
    "UCG": "Serine",
    "UAU": "Tyrosine",
    "UAC": "Tyrosine",
    "UGU": "Cysteine",
    "UGC": "Cysteine",
    "UGG": "Tryptophan",
    "UAA": "Stop",
    "UAG": "Stop",
    "UGA": "Stop",
}


def proteins(strand):
    protein_list = []
    codon_list = []
    for triplet in range(0, len(strand), 3):
        codon_list.append(strand[triplet:triplet+3])

    for codon in codon_list:
        protein = protein_dict[codon]
        if protein == 'Stop':
            break
        protein_list.append(protein)

    return protein_list
