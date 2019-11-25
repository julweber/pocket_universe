# !!! Coordinates are always represented in AU values !!!
class Coordinate
  attr_accessor :x, :y, :z

  def initialize(x = 0.0, y = 0.0, z = 0.0)
    @x = x
    @y = y
    @z = z
  end

  # http://hotmath.com/hotmath_help/topics/distance-formula-in-3d.html
  def distance_between(coordinate)
    (Math.sqrt( (coordinate.x - x)**2 + (coordinate.y - y)**2 + (coordinate.z - z)**2 )).abs
  end
end
