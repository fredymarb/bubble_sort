def bubble_sort(array)
  length_of_array = array.length

  # continue iterating until no more swaps are needed
  loop do
    swapped = false

    (length_of_array - 1).times do |i|
      # if current element is greater than the next one, swap them
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]

        swapped = true
      end
    end

    # if no swaps were made, the array is sorted, so break out of the loop
    break unless swapped

    # decrease the array length to exclude the last sorted element
    # this is for efficiency
    length_of_array -= 1
  end

  array
end

puts bubble_sort([10, 9, 8, 7, 6, 5, 4, 3, 2, 1]).inspect
