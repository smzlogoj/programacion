#= The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million. =#

primes = [3]
pCount = 2
pCheck = 3
cSqrt = 3

while pCheck<2_000_000
    global pCheck+=2
    while cSqrt*cSqrt<pCheck
        global cSqrt+=2
    end
    for p in primes
        if p > cSqrt
            break
        end
        if pCheck%p == 0
            @goto endloop
        end
    end
    push!(primes, pCheck)
    global pCount += 1
    @label endloop
end

println(sum(primes)+2)