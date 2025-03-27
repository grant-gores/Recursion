def merge_sort(array)
  # Base case: If array has 1 or 0 elements, it's already sorted
  return array if array.length <= 1

  # Split array into two halves
  mid = array.length / 2
  left_half = merge_sort(array[0...mid])  # Sort left half
  right_half = merge_sort(array[mid..-1]) # Sort right half

  # Merge sorted halves
  merge(left_half, right_half)
end

def merge(left, right)
  sorted = []
  while !left.empty? && !right.empty?
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end

  # Append remaining elements
  sorted + left + right
end