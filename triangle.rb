# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  
  if (a <= 0 or b <= 0 or c <= 0)
    raise TriangleError, "Invalid side value"
  end
  if (a + b <= c or a + c <= b or b + c <= a)
    raise TriangleError, "One side is too long"
  end
  
  if (a == b)
    if (a == c)
      :equilateral
    else
      :isosceles
    end
  else
    if (a == c or b == c)
      :isosceles
    else
      :scalene
    end
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
