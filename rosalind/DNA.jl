dna = open("dna.txt") do file
    read(file, String)
end


A = count(i -> (i == 'A'), dna)
C = count(i -> (i == 'C'), dna)
G = count(i -> (i == 'G'), dna)
T = count(i -> (i == 'T'), dna)
println("$A $C $G $T")