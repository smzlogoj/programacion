# Mendel's First Law
k = 29 # Homozygous dominant         (AA)
m = 30 # Heterozygous                (Aa)
n = 25 # Homozygous recessive        (aa)

function mendelFirstlaw(k, m, n)
    pop = k + m + n
    prob = (4*(k*(k-1)+2*k*m+2*k*n+m*n)+3*m*(m-1))/(4*pop*(pop-1))
    println(round(prob, digits = 5))
end

mendelFirstlaw(k, m, n)