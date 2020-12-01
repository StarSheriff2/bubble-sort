def bubble_sort(array)

  swapped = true

  while swapped
    swapped = false

    for i in 0...array.length-1
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
  end
  
  return array
end

p bubble_sort([5,8,2,4])