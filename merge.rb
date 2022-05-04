arr = [5, 2, 1, 3, 6, 4]


def merge_sort(arr, sorted=[])
  return arr if arr.length < 2
  left_side = merge_sort(arr[0...arr.length / 2])
  right_side = merge_sort(arr[arr.length / 2 .. arr.length])
  until left_side.empty? or right_side.empty?
    left_side.first <= right_side.first ? sorted << left_side.shift : sorted << right_side.shift
  end
  sorted + left_side + right_side
end 

puts merge_sort(arr)

#MERGE SORT pseudocode 
#sort left half of the array (assuming n > 1)
#sort right half of the array (assuming n > 1)
#merge the two halfs together 