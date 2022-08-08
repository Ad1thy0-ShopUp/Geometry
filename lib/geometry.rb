require_relative "geometry/point"

module Geometry
  class Line
    attr_accessor :length

    def initialize(point_1, point_2)
      if point_1.class == Point and point_2.class == Point
        @point_1 = point_1
        @point_2 = point_2
        @length = @point_1.calculate_distance_to(@point_2)
      else
        raise("Line should be initialized with 2 point objects")
      end
    end
  end
end