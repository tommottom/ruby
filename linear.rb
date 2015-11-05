class A
  def linear_search(arr_size, value)

    arr = (1..arr_size).to_a

    arr.each do |number|
      if number == value
        return "Found!"
      end
    end
  end
end

find = A.new

puts find.linear_search(5, 5)
