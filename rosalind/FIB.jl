#= Fn = F(n-1) + F(n-2)
F1 = F2 = 1 =#

function fibonacci(n, k)
    a = 1
    b = 1
    c = 0
    for h = 1 : n
        if h == 1 || h == 2
            println(1)
        else
            c = a * k + b
            println(c)
            a = b
            b = c
        end
    end
end

fibonacci(31, 2)

