# Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).
# > bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

def bubble_sort(array)
  copy_array = array.slice(0..-1)
  length = copy_array.length - 1

  copy_array.length.times do 
    copy_array.map.with_index do |item, idx|
      result = item <=> copy_array[idx + 1]
      if result == 1
        temp = copy_array[idx + 1]
        copy_array[idx] = temp
        copy_array[idx + 1] = item
      end
    end
  end
  return copy_array
end
