#= By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, 
we can see that the 6th prime is 13.

What is the 10 001st prime number? =#

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

function listingPrimeNumbers(number)
    cont = 2
    contPrime = 1
    while contPrime <= number
        if isPrime(cont)
            println(cont)
            contPrime += 1
        end
        cont += 1
    end
end

listingPrimeNumbers(10001)