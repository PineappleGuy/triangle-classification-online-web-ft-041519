class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    if side1 == side2 && side1 == side3
      self.kind = :equilateral
    elsif (side1 == side2 && side1 != side3) || (side1 == side3 && side1 != side2) || (side2 == side3 && side2 != side1)
      self.kind = :isosceles
    elsif side1 != side2 && side1 != side3 && side2 != side3
      self.kind = :scalene
    elsif side1 + side2 <= side3 || side1 <= 0 || side2 <= 0 || side3 <= 0
      begin
        raise TriangleError
      rescue TriangleError => error
    end
  end

  def kind
    @kind
  end

  class TriangleError < StandardError

  end

end
