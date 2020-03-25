require_relative '../config/constants'
require_relative './direction'
require_relative './point'
require_relative './rotation'
require_relative './commander'

class Move
  include Constants
  include Rotation
  attr :dir
  attr :current_point

  def initialize(point, direction)
    @current_point = point
    @direction = direction
  end

  # TODO: private methods for step_north, step_south etc
  def step_forward(point, direction)
    @direction = direction
    puts 'MOVE:' + point.inspect
    puts 'MOVE:' + @direction.inspect
    puts 'DIR_MOVE:' + direction.inspect
    puts point.y_coord - 1

    case direction
    when 'north'
      if point.y_coord - 1 > MIN_Y
        p = Point.new(point.x_coord, point.y_coord - 1)
      else
        p = step_forward(point, flip_direction(@direction))
      end
    when 'south'
      if point.y_coord + 1 > MAX_Y
        p = Point.new(point.x_coord, point.y_coord + 1)
      else
        p = step_forward(point, flip_direction(@direction))
      end
    when 'west'
      if point.x_coord - 1 > MIN_X
        p = Point.new(point.x_coord - 1, point.y_coord)
      else
        p = step_forward(point, flip_direction(@direction))
      end
    else # going 'east'
      if point.x_coord + 1 < MAX_X
        p = Point.new(point.x_coord + 1, point.y_coord)
      else
        p = step_forward(point, flip_direction(@direction))
      end
    end
    p
  end
end
