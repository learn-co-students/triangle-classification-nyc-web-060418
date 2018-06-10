class Triangle
  # write code here

  class TriangleError < StandardError
  # triangle error code
  end

  attr_accessor :length1, :length2, :length3, :kind


  def initialize (length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
    @kind = nil
  end

  def check_if_triangle
    
  end

  def kind
    if length1 == length2 && length1 == length3
      @kind = :equilateral
    elsif length1 == length2 || length2 == length3 || length1 == length3
      @kind = :isosceles
    else
      :scalene
    end
  end

end
