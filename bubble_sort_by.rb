def bubble_sort_by(array)
    n = array.length
    loop do 
        swapped = false
        (n - 1).times do |i|
            if yield(array[i], array[i + 1]) == 1
                array[i], array[i+1] = array[i+1], array[i]
                swapped = true
            end
        end
        break if swapped == false
    end
    print array
    puts
end
bubble_sort_by(["hi","hello","hey"]) {|left, rigth| left.length <=> rigth.length}
