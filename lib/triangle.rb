class Triangle
  # write code here
  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def is_triangle_valid
    if side1 < side2 + side3 && side2 < side1 + side3 && side3 < side1 + side2
      return true
    else
      return false
    end
  end

  def kind
    if !is_triangle_valid
      raise TriangleError
    end

    array = [@side1, @side2, @side3]
    if array.uniq.length == 1
      return :equilateral
    elsif array.uniq.length == 2
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "Your triangle is invalid!"
    end
  end


end
