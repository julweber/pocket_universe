module SpaceObjects
  class SpaceObject
    attr_accessor :coordinate, :mass, :radius

    def initialize(coordinate = Coordinate.new)
      @coordinate = coordinate
      @mass = 0.0
      @radius = 0.0
    end
  end
end
