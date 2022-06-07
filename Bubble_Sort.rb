def bubble_sort(arr)
    unsorted = true

        while unsorted do
            unsorted = false
            for i in 0..arr.length-2
                if arr[i] > arr[i+1]
                    arr[i], arr[i+1] = arr[i+1], arr[i]
                    unsorted = true
                end
            end
        end
        return arr
   
end

p bubble_sort([4,3,78,2,0,2])
