function transcribingDNAintoRNA(rna)
    println(replace(rna, 'T' => 'U'))
end

rna = open("rna.txt") do file
    read(file, String)
end

transcribingDNAintoRNA(rna)