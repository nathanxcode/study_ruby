#Bubble sorte
#where each element is compared to the one next to it and they are swapped if the one on the left is larger than the one on the right. This continues until the array is eventually sorted.

def bubble_sort(array)

    a_num = 0
    b_num = 0


    for i in 0..array.length
        array.each_with_index do |num, i|
    
            if array[i+1] != nil
                b_num = array[i]
                a_num = array[i+1]
                if b_num > a_num
                    array[i] = a_num
                    array[i+1] = b_num
                end
            end        
        end
    end
    p array
    return array
end

#           [0,2,2,3,4,78]
bubble_sort([4,3,78,2,0,2])