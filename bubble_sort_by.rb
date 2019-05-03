def bubble_sort_by(array)
    n = array.length
    loop do 
        swapped = false
        (n - 1).times do |i|
            if block_given?
                if yield(array[i], array[i + 1]) == 1
                    array[i], array[i+1] = array[i+1], array[i]
                    swapped = true
                end 
            elsif !block_given?
                if array[i] > array[i+1]
                    array[i], array[i+1] = array[i+1], array[i]
                    swapped = true
                end
            end
        end
        break if swapped == false
    end
    print array
end
a = ["hi","hello","hey"]
bubble_sort_by(a) {|left, rigth| left.length <=> rigth.length}