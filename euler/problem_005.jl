#= 2520 is the smallest number that can be divided by each of the 
numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible 
by all of the numbers from 1 to 20? =#

function smallestMultiple()
    number = 1
    multiple = false

    while multiple == false
        if (number % 11 == 0) & (number % 12 == 0) & (number % 13 == 0) & (number%14==0) & (number%15==0) & (number%16==0) & (number%17==0) & (number%18==0) & (number%19==0) & (number%20==0)
            multiple == true
        else
            number = number + 1
        end
        println(number)
    end
    return number
end

prinln(smallestMultiple())

