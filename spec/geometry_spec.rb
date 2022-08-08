require_relative '../lib/geometry'
require_relative '../lib/geometry/point'

RSpec.describe Geometry::Line do
  context "Line Initialization" do
    it 'should not raise error when given two point parameters' do
      expect { Geometry::Line.new(Point.new(0, 0), Point.new(0, 0)) }.not_to raise_error
    end

    it 'should ensure two parameters are point objects' do
      expect { Geometry::Line.new(Point.new(0, 0), "(0, 0)") }.to raise_exception("Line should be initialized with 2 point objects")
    end
  end
  context "Line Length Ver" do
    it 'should return length as 0 when both points are the same co-ordinates' do
      expect(Geometry::Line.new(Point.new(3.0, 4.0), Point.new(3, 4)).length).to eq(0)
    end

    it 'should return length when both points share same x co-ordinate' do
      expect(Geometry::Line.new(Point.new(10, 30), Point.new(10, 20)).length).to eq(10)
    end

    it 'should return length when both points share same y co-ordinate' do
      expect(Geometry::Line.new(Point.new(10, 5), Point.new(5, 5)).length).to eq(5)
    end

    it 'should return length when points are arbitrary' do
      expect(Geometry::Line.new(Point.new(7.0, -3), Point.new(-5, 2.0)).length).to eq(13.0)
    end
  end
end
