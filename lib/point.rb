require_relative '../config/constants'

class Point
  include Constants
  attr_accessor :x_coord, :y_coord

  def initialize(x_coord, y_coord)
    if x_coord < ZERO || x_coord > MAX_X || y_coord < ZERO || y_coord > MAX_Y
    raise StandardError,
          "coordinate must be integer between (O,0) and (#{MAX_X},#{MAX_Y})!"
    else
      @x_coord = x_coord
      @y_coord = y_coord
    end
  end
end
