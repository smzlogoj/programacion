dna = open("revc.txt") do file
    read(file, String)
end
function complementingStrandDNA(dna)
    cdna = ""
    nucleotido = ""
    for h = length(dna) : -1 : 1
        if dna[h] == 'A'
            nucleotido = 'T'
        elseif dna[h] == 'T'
            nucleotido = 'A'
        elseif dna[h] == 'G'
            nucleotido = 'C'
        else dna[h] == 'C'
            nucleotido = 'G'
        end
        cdna = cdna * nucleotido
    end
    println(cdna)
end

complementingStrandDNA(dna)