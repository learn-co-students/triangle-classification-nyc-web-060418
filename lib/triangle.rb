

class Triangle
  # write code here
  attr_accessor :equilateral, :isosceles, :scalene, :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1, @length2, @length3 = length1, length2, length3
    @triangle_side_lengths = [length1, length2, length3]
  end

  def kind
    if @triangle_side_lengths.any? {|side| side <= 0}
      raise TriangleError
    elsif (length1 + length2) <= length3 || (length1 + length3) <= length2 || (length2 + length3) <= length1
      raise TriangleError
    elsif @triangle_side_lengths.uniq.length == 1
      return :equilateral
    elsif @triangle_side_lengths.uniq.length == 2
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
    # triangle error code
    def message
      "incorrect length sides!!!"
    end
  end


end
