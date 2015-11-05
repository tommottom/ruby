class B
  def binary_search(arr_size, value)
    arr = (1..arr_size).to_a

    left = 0
    right = arr.size-1
    mid = 0

    while left <= right do
      mid = (left + right) / 2
      if arr[mid] == value
        return "Found!"
      elsif arr[mid] < value
        left = mid + 1
      else
        right = mid - 1
      end
    end
    "Not Found!"
  end
end

find_at = B.new
puts find_at.binary_search(10, 9)


=begin
right = arr_sizeの時挙動に関しての問題を解いてない。


=end
