function hasTripleDouble(w)
# Tests to see if a word has three consecutive double letters    
    if length(w) < 6    return false   end

    W = uppercase(w) # Make the function case insensitive
    tripleDoubleFound = false
    i = 1
    i_max = length(W) - 5

    while !tripleDoubleFound  &&  i ≤ i_max
        if ( W[i]   == W[i+1]  &&  W[i+1] ≠ W[i+2]  &&
             W[i+2] == W[i+3]  &&  W[i+3] ≠ W[i+4]  &&
             W[i+4] == W[i+5]                           )

             tripleDoubleFound = true
        else
            i += 1
        end
    end

    tripleDoubleFound
end


function main()

    words = []
    path = # <------------------- Copy and paste the path to your words.txt file here ***************************
    open(path, "r") do f
        for line in eachline(f)
          push!(words, line)
        end
    end

    wordsWithTripleDouble = []
    for w in words
        if hasTripleDouble(w)
            push!(wordsWithTripleDouble, w)
        end
    end

    println("-"^40, "\n", "Words with three consecutive double letters:\n")
    for w in wordsWithTripleDouble
        println(w)
    end
    count = length(wordsWithTripleDouble)
    println("\n"^3, "There are $count words with")
    println("three consecutive double letters.")
end
main()
