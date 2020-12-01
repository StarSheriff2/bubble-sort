def bubble_sort(array)

  swapped = true

  while swapped
    swapped = false

    0.upto(array.length-2) do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
  end
  
  return array
end


def bubble_sort_by(array)
  
  swapped = true

  while swapped
    swapped = false

    0.upto(array.length-2) do |i|
      if yield(array[i], array[i + 1]).positive?
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
  end
  
  return array



end

p bubble_sort([20,19,15,9,8,7,6,5,4])

p bubble_sort_by(["elephant","tiger","bat"]) {|left,right| left.length - right.length}

