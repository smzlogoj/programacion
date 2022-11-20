#= The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ? =#


function largestPrimeFactor(number)
    factor = 2
    while number != 1
        if number % factor != 0
            factor += 1
        else
            number = number / factor
        end
    end
    return factor
end

number = 600851475143
println(largestPrimeFactor(number))