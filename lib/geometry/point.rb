class Point
  attr_accessor :x, :y

  def initialize(x, y)
    if x.is_a?(Numeric) and y.is_a?(Numeric)
      @x = x
      @y = y
    else
      raise("Invalid parameters for point initialization")
    end
  end

  def calculate_distance_to(another_point)
    if another_point.class == Point
      if another_point.x == @x and another_point.y == @y
        return 0
      elsif another_point.x == @x
        return (another_point.y - @y).abs
      elsif another_point.y == @y
        return (another_point.x - @x).abs
      else
        return ((another_point.x - @x) ** 2 + (another_point.y - @y) ** 2) ** 0.5
      end
    else
      raise("Parameter to calculate_distance_to should be Point")
    end
  end
end