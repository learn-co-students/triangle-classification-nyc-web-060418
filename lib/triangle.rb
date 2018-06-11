class Triangle
  # write code here

  class TriangleError < StandardError
  # triangle error code
    puts "That isn't an actual triangle. Try again!"
  end

  attr_accessor :length1, :length2, :length3, :kind


  def initialize (length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
    @kind = nil
  end

  def real_triangle?
    real_triangle_param = [(@length1 + @length2 > @length3), (@length1 + @length3 > @length2), (@length3 + @length2 > @length1)]

    triangle_example = [@length1, @length2, @length3]

    raise TriangleError if
      triangle_example.include?(0) ||
      real_triangle_param.include?(false)
    #end
    # triangle_example.any? do |length|
    #   length <= 0
    # # end
  end

  def kind
    real_triangle?
      if length1 == length2 && length1 == length3
        @kind = :equilateral
      elsif length1 == length2 || length2 == length3 || length1 == length3
        @kind = :isosceles
      else
        :scalene
      end
  end

end
