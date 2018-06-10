class Triangle

  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
  end

  def kind
    if @sides[0] + @sides[1] <= @sides[2] ||
       @sides[0] + @sides[2] <= @sides[1] ||
       @sides[1] + @sides[2] <= @sides[0] ||
       @sides.any? {|side| side <= 0}
      raise TriangleError
    end

    if @sides.uniq.length == 1
      :equilateral
    elsif @sides.uniq.length == 2
      :isosceles
    elsif @sides.uniq.length == 3
      :scalene
    end
  end

  class TriangleError < StandardError

  end

end
