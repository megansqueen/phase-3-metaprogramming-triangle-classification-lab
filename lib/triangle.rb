class Triangle
  attr_accessor :equilateral
  attr_accessor :isosceles
  attr_accessor :scalene

  @@a = 0
  @@b= 0
  @@c = 0
  
  def initialize(side_1, side_2, side_3)
    @@a = side_1
    @@b= side_2
    @@c = side_3
    @@sides = [@@a, @@b, @@c]
  end

  def kind
    if @@sides.uniq.size == 1
      :equilateral
    elsif @@sides.uniq.size == 2
      :isosceles
    elsif @@sides.uniq.size == 3
      :scalene
    end
  end

end
