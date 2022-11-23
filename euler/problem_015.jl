#= Starting in the top left corner of a 2×2 grid, and 
only being able to move to the right and down, 
there are exactly 6 routes to the bottom right corner.


How many such routes are there through a 20×20 grid? =#

# https://en.wikipedia.org/wiki/Lattice_path 

function latticePaths(grid)
    result = 1
    for h = 1 : grid
        result = result * (grid + h) / h
    end
    return result
end

println(latticePaths(20))