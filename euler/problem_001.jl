#=  If we list all the natural numbers below 10 that are 
 multiples of 3 or 5, we get 3, 5, 6 and 9. 
 The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.

 =#

function calcularSuma(numero)
   multiplo3 = 3
   multiplo5 = 5
   suma = 0

   for h = numero - 1 : -1 : 3
      if h % multiplo3 == 0
         suma = suma + h
      elseif h % multiplo5 == 0
         suma = suma + h
      end
   end

   return suma
end
numero = 1000
println(calcularSuma(numero))