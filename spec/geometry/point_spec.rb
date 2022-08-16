require_relative "../../lib/geometry/point"

RSpec.describe Point do
  context " Point Initialization " do
    it "should not raise error given 2 parameters" do
      expect { Point.new(0, 0) }.not_to raise_error
    end

    it "should validate whether the Point is Numeric" do
      new_point = Point.new(0, 1)
      expect(new_point.x).to be_an(Numeric)
      expect(new_point.y).to be_an(Numeric)
    end

    it "should raise Exception when non-numeric co-ordinates are given" do
      expect { Point.new("bC", 1) }.to raise_exception("Invalid parameters for Point initialization")
    end
  end

  context " Point Distance Calculation " do
    it "should not raise error when Point parameter is given" do
      expect { Point.new(2, 3).calculate_distance_to(Point.new(3, 2)) }.not_to raise_error
    end

    it "should ensure parameter passed is Point object" do
      expect { Point.new(2, 3).calculate_distance_to("(3,2)") }.to raise_exception("Parameter to calculate_distance_to should be Point")
    end

    it "should calculate the distance to another Point" do
      new_point = Point.new(4.0, 2)
      another_point = Point.new(1.0, -2)
      expect(new_point.calculate_distance_to(another_point)).to eq(5.0)
    end
  end
end