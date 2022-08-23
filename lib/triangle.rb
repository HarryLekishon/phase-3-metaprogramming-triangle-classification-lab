class Triangle
  # write code here
  attr_accessor:length1,:length2,:length3

  def initialize(length1,length2,length3)
    @length1 = length1
    @length2 = length2
    @lengt3 = length3

  end 

  def kind 
      validation

      if length1 == length2 && length2 == length3
        return equilateral
      elsif length1 == length2 || length2 == length3 || length1 == length3
        return isosceles
      else
        return scalene
      end
    
  end 

  def validate_input?
   [length1,length2,length3].all?(:positive?)
  end

  def check_sides?
    length1 + length2 > length3 && length1 + length3 > length2 && length2 + length3 > length1
  end

  def validation 
    raise TriangleError unless validate_input? && check_sides?
  end
  
      


  class TriangleError < StandardError
    "Check your Inputs"
  end


end