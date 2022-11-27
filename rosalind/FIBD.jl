#Mortal Fibonacci Rabbits
# Fn = F(n-1) + F(n-2) - F(n-(m+1))

function mortalFibonacci(n, m)
    generations = [1, 1]
    count = 2
    while count < n
        size = length(generations)
        if count < m
            # Fn = Fn-2 + Fn-1
            push!(generations, generations[size - 1] + generations[size])
        elseif (count == n || count == m + 1)
            #Fn = Fn-2 + Fn-1 - 1
            push!(generations, generations[size - 1] + generations[size] - 1)
        else
            #Our recurrence relation here is Fn = Fn-2 + Fn-1 - Fn-(j+1)
            push!(generations, generations[size - 1] + generations[size] - generations[size -(m + 2)])
        end
        count += 1
        println(generations)
    end
    #println(generations)
end

mortalFibonacci(6, 3)