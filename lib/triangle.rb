require 'pry'
class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def greater_than_0
    (side1 > 0) && (side2 > 0) && (side3 > 0)
  end

  def sums_validate
    (side1 + side2 > side3) && (side2 + side3 > side1) &&
    (side1 + side3 > side2)
  end

  def validate
    self.greater_than_0 && self.sums_validate
  end
  # binding.pry

  def kind
    if validate
      triangle_type = [side1, side2, side3]
      if triangle_type.uniq.length == 1
        return :equilateral
      elsif triangle_type.uniq.length == 2
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
   # triangle error code
    def message
      puts "Not a triangle!"
    end
  end
end
