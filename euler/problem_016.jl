#= 2^15 = 32768 and the sum of its digits 
is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 2^1000? =#

function powerDigitSum(power)
    number = Int[]
    push!(number, 2)
    doPush = false
    for h = 2 : power
        if doPush
            push!(number, 1)
            doPush = false
        end
        for i in eachindex(number)
            product = number[i] * 2
            if product >= 10
                if i < length(number)
                    number[i + 1] = number[i + 1 ] + 1
                else
                    doPush = true
                end
                number[i] = parse(Int, string(product)[2:end])
            else
                number[i] = number[i] * 2
            end
        end
        println(number)
    end

end

powerDigitSum(15)