class Triangle
  class TriangleError < StandardError
  
  attr_accessor :side_one, :side_two, :side_three
  
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end
  
  def kind
    validate_triangle
    
    if side_one == side_two && side_two == side_three
      :equilateral
      elsif side_one == side_two || side_two = side_three || side_one == side_three
      :isosceles
    else
      :scalene
    end
  end
  
  def validate_triangle
    
    triangle = [(side_one + side_two > side_three), (side_one + side_three > side_two), (side_two + side_three > side_one)]
    
    [side_one, side_two, side_three].each do |side|
      if side <= 0
      triangle << false 
   
    end
    raise TriangleError 
      if triangle.include?(false)
    end
  end
end
end
end
