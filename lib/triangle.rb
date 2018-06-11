class Triangle

  attr_accessor :side_1, :side_2, :side_3
  attr_reader :all_sides, :equilateral, :isosceles, :scalene

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @all_sides = [side_1, side_2, side_3]
  end

  def kind
    if self.all_sides.any? {|side| side <= 0}
      raise TriangleError
    elsif (side_1 + side_2) <= side_3 || (side_1 + side_3) <= side_2 || (side_2 + side_3) <= side_1
      raise TriangleError
    elsif self.all_sides.uniq.length == 1
      :equilateral
    elsif self.all_sides.uniq.length == 2
      :isosceles
    elsif self.all_sides.uniq.length == 3
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "this is my error!!"
    end
  end

end
