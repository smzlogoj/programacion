#= A Pythagorean triplet is a set of three natural numbers, 
a < b < c, for which,

a2 + b2 = c2
For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for 
    which a + b + c = 1000.
Find the product abc. =#

function specialPythagoreanTriplet()
    triplet = 1
    for a = 1 : 1000
        for b = 1 : 1000
            cSquare = a * a + b * b
            sum = 0
            if isinteger(sqrt(cSquare))
                sum = a + b + sqrt(cSquare)
                if sum == 1000
                    triplet = a * b * sqrt(cSquare)
                    @goto escape_label
                end
            end
        end
    end
    @label escape_label
    println(triplet)
end
specialPythagoreanTriplet()