# Consensus and Profile
function loadFasta()
    fasta = open("CONS.txt") do file
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
function consensusProfile()
    dFasta = loadFasta()
    dnaStrings = collect(values(dFasta))
    size = length(dnaStrings[1])

    A = Array{Int}(undef, size)
    C = Array{Int}(undef, size)
    G = Array{Int}(undef, size)
    T = Array{Int}(undef, size)

    fill!(A, 0)
    fill!(C, 0)
    fill!(G, 0)
    fill!(T, 0)

    for i in eachindex(dnaStrings)
        for h in eachindex(dnaStrings[i])
            if dnaStrings[i][h] == 'A'
                A[h] += 1
            elseif dnaStrings[i][h] == 'C'
                C[h] += 1
            elseif dnaStrings[i][h] == 'G'
                G[h] += 1
            elseif dnaStrings[i][h] == 'T'
                T[h] += 1
            end
        end
    end
    consensus = ""
    a = "A: "
    c = "C: "
    g = "G: "
    t = "T: "
    for i = 1 : size
        dnucleotic = Dict('A' => A[i], 'C' => C[i], 'G' => G[i], 'T' => T[i])
        #println(findmax(dnucleotic)[2])
        consensus = consensus * findmax(dnucleotic)[2]
        a = a * string(A[i]) * " "
        c = c * string(C[i]) * " "
        g = g * string(G[i]) * " "
        t = t * string(T[i]) * " "    
    end
    println(consensus)
    println(a)
    println(c)
    println(g)
    println(t)

    io = open("response.txt", "w")
    write(io, consensus * "\n")
    write(io, a * "\n")
    write(io, c * "\n")
    write(io, g * "\n")
    write(io, t)
    close(io)
end

consensusProfile()