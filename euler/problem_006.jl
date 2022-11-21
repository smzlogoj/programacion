#= The sum of the squares of the first ten natural numbers is,

The square of the sum of the first ten natural numbers is,

Hence the difference between the sum of the squares of the 
first ten natural numbers and the square of the sum is .

Find the difference between the sum of the squares of the 
first one hundred natural numbers and the square of the sum. =#

function sumSquareDifference(number)
    sumSquare = 0
    sum = 0
    for h = 1 : number
        sumSquare = sumSquare + h * h
        sum = sum + h
    end
    squareSum = sum * sum
    diff = squareSum - sumSquare

    return diff
end

number = 100
println(sumSquareDifference(number))