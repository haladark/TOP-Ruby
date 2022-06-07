def bubble_sort(arr)
    unsorted = true

        while unsorted do
            i=0
            unsorted = false
            while i < arr.length-1
                if arr[i] > arr[i+1]
                    arr[i], arr[i+1] = arr[i+1], arr[i]
                    unsorted = true
                end
                i+=1
            end
        end
        return arr
   
end

p bubble_sort([4,3,78,2,0,2])
