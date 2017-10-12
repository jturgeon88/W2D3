require 'rspec'
require 'rspec_exercises'

RSpec.describe Array do
  subject(:array) { [1, 2, 1, 3, 3] }
  subject(:two_sum_array) { [-1, 0, 2, -2, 1] }
  subject(:transpose_array) { [[0, 1, 2], [3, 4, 5], [6, 7, 8]] }

  describe "#my_uniq" do
    it "does not use the uniq method" do
      expect(array).not_to receive(:uniq)
      array.my_uniq
    end

    it "returns a specific array" do
      expect(array.my_uniq).to eq([1, 2, 3])
    end

    it "does not modify original array" do
      array.my_uniq
      expect(array).to eq([1, 2, 1, 3, 3])
    end
  end

  describe "#two_sum" do
    it "returns the correct nested array" do
      expect(two_sum_array.two_sum).to eq([[0, 4], [2, 3]])
    end

    it "does not modify the original array" do
      two_sum_array.two_sum
      expect(two_sum_array).to eq([-1, 0, 2, -2, 1])
    end
  end

  describe "#my_transpose" do
    it "does not use #transpose method" do
      expect(transpose_array.my_transpose).not_to receive(:transpose)
      transpose_array.my_transpose
    end

    it "outputs the correct nested array" do
      expect(transpose_array.my_transpose).to eq(transpose_array.transpose)
    end

    it "does not modify the original array" do
      transpose_array.my_transpose
      expect(transpose_array).to eq([[0, 1, 2], [3, 4, 5], [6, 7, 8]])
    end
  end
end
