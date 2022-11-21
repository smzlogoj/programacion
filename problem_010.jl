#= The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million. =#

function isPrime(number)
    prime = true
    contador = 2
    while (prime == true) & (contador < number)
        if number % contador == 0
            prime = false
        end
        contador = contador + 1
    end
    return prime
end

function summationOfPrimes(number)
    sum = 0
    for h = 2 : number
        if isPrime(h)
            sum += h
        end
    end
    println(sum)
end

summationOfPrimes(2000000)