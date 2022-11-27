### Overlap Graphs

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

function overlapGraphs(o)
    dFasta = loadFasta("GRPH.txt")
    edges = String[]
    for (key, value) in dFasta
        suffix = value[length(value) - o + 1: end]
        for (key2, value2) in dFasta
            if !isequal(key, key2)
                prefix = value2[1: o]
                if isequal(suffix, prefix)
                    push!(edges, key * " " * key2 * "\n")
                end
            end
        end
    end
    for h in eachindex(edges)
        print(edges[h])
    end
end

overlapGraphs(3)