def bubble_sort(arr)
  loop do
    swapped = false
    (arr.length - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
    break if swapped == false
  end
  arr
end

puts bubble_sort([9, 7, 3, 8, 1])

# bubble_sort_by

def bubble_sort_by(arr)
  loop do
    swapped = false
    (arr.length - 1).times do |i|
      if (yield arr[i], arr[i + 1]).positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
    break if swapped == false
  end
  arr
end

bubble_sort_in_action = bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end

puts bubble_sort_in_action
