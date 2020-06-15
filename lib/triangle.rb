class Triangle
  class TriangleError < StandardError
end
  attr_accessor :side_one, :side_two, :side_three
  
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end
  
  def kind
    if valid_triangle?
    
        if side_one == side_two && side_two == side_three
        :equilateral
       elsif side_one == side_two || side_two = side_three || side_one == side_three
         :isosceles
        else
          :scalene
     end
   else 
     raise TriangleError
   end
    end
  
  def valid_triangle?
    if(side_one > 0 && side_two > 0 && side_three > 0) && (side_one + side_two > side_three && side_two + side_three > side_one && side_one + side_three > side_two)
      true
    else
      false
    end
  end
end

