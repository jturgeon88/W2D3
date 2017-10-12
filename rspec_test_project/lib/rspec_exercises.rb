class Array
  def my_uniq
    result = []

    self.each do |el|
      result << el if !result.include?(el)
    end

    result
  end

  def two_sum
    result = []

    self.each_with_index do |num1, idx1|
      (idx1...self.length).each do |idx2|
        next if idx1 == idx2
        if num1 + self[idx2] == 0
          result << [idx1, idx2]
        end
      end
    end
    result
  end

  def my_transpose
    new_matrix = []
    i = 0

    while i < self.size
      new_matrix[i] = []
      j = 0  # move this here
      while j < self.size
        new_matrix[i] << self[j][i]
        j += 1
      end
      i += 1
    end

    new_matrix
  end
end
