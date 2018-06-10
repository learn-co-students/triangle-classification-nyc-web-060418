class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @lengths = [@side1, @side2, @side3]
  end

  def kind
    valid_triangle
    if @side1 == @side2 && @side1 == @side3
      :equilateral
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      :isosceles
    else
      :scalene
    end
  end

  def valid_triangle
    valid = [(@side1 + @side2 > @side3), (@side1 + @side3 > @side2), (@side2 + @side3 > @side1)]
    raise TriangleError if @lengths.include?(0)
    raise TriangleError if valid.include?(false)
  end

  class TriangleError < StandardError
    puts "your triangle is not valid! 2 sides summed must exceed the other"
  end
end
