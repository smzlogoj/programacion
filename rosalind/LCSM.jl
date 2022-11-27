#Finding a Shared Motif
function loadFasta(txt)
    fasta = open(txt) do file
        read(file, String)
    end
    fasta = split(fasta, ">")
    dFasta = Dict()
    for i in eachindex(fasta)
        if fasta[i] != ""
            position = findfirst("\n", fasta[i])
            position = collect(position)[1]
            key = replace(fasta[i][1:position], "\n" => "")
            value = replace(fasta[i][position:end], "\n" => "")
            dFasta[key] = value
        end
    end
    return dFasta
end

function longestCommonSubstring()
    dFasta = loadFasta(txt)
    #Get first dna
    adna = collect(values(dFasta))
    dna = adna[1]
    
end

txt = "LCSM.txt"
longestCommonSubstring()
