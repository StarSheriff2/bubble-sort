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


def bubble_sort_by(array)
  
  swapped = true

  while swapped
    swapped = false

    for i in 0...array.length-1
      if yield(array[i], array[i + 1]).positive?
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
  end
  
  return array
end

p bubble_sort([20,19,15,9,8,7,6,5,4])

p bubble_sort_by(["hi","hello","hey"]) {|left,right| left.length - right.length}

