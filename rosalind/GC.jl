#Computing GC Content
function loadFasta()
    fasta = open("GC.txt") do file
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

function computingGCContent()
    dFasta = loadFasta()
    dGC = Dict()
    for (key, value) in dFasta
        A = count(i -> (i == 'A'), value)
        C = count(i -> (i == 'C'), value)
        G = count(i -> (i == 'G'), value)
        T = count(i -> (i == 'T'), value)
        dGC[key] = round((G + C) *100 / (A + C + G + T), sigdigits = 6)
    end
    print(findmax(dGC)[2] * "\n" * string(findmax(dGC)[1]) * "\n")
end
computingGCContent()