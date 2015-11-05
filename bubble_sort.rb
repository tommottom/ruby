class Array
  def bubble_sort
    ary = self.dup
    res = []
    res.push ary.bubbling until ary.empty?
    return res
  end
  def bubbling
    (length - 1).times do |i|
      self[i], self[i+1] = self[i+1], self[i] if self[i] < self[i+1]
    end
    delete_at(-1)
  end
end

p [3, 1, 5, 6, 10, 9].bubble_sort
