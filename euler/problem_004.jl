#= A palindromic number reads the same both ways. The largest 
palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of 
two 3-digit numbers. =#

function isPalindrome(number)
    palindrome = false
    str = string(number)
    str2 = ""

    for h = 0 : length(str) - 1
        str2 = str2 * str[end - h]
    end

    if str == str2
        palindrome = true
    end

    return palindrome
end

function largestPalindrome()

    lpalindrome = 0
    for a = 100 : 999
        for b = 100 : 999
            product = a * b
            if isPalindrome(product)
                if product > lpalindrome
                    lpalindrome = product
                end
            end
        end
    end
    println(lpalindrome)
end

largestPalindrome()