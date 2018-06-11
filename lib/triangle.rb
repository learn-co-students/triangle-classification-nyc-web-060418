class Triangle
  # write code here
  attr_accessor :s1, :s2, :s2

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def t_greater_than_0
    @s1 > 0 && @s2 > 0 && @s3 > 0
  end

  def t_principle
    (@s1 + @s2 > @s3) && (@s2 + @s3 > @s1) && (@s1 + @s3 > @s2)
  end

  def isosceles
    t_greater_than_0 && t_principle && (@s1 == @s2 || @s1 == @s3 || @s2 == @s3)
  end

  def equilateral
    t_greater_than_0 && t_principle && @s1 == @s2 && @s1 == @s3 && @s2 == @s3
  end

  def scalene
    t_greater_than_0 && t_principle && @s1 != @s2 && @s1 != @s3 && @s2 != @s3
  end

  def kind
    if equilateral
       p :equilateral
    elsif scalene
       p :scalene
    elsif isosceles
     p :isosceles
    else
      begin
        raise TriangleError
      # rescue TriangleError => error
          # error.message
      end
    end
  end

  class TriangleError < StandardError
    # def message
    #   "Customer Error ---- "
    # end
  end

end
