# frozen_string_literal: true
module Move
  attr :direction
  def initialize(point, direction)
    @point = point
    @direction = direction
  end

  def step_forward(point, direction)
    case direction
    when 'north'
      point = Point.new(point.x_coord, point.y_coord - 1)
    when 'south'
      point = Point.new(point.x_coord, point.y_coord + 1)
    when 'west'
      Point.new(point.x_coord, point.y_coord)
    when 'east'
      point = Point.new(point.x_coord + 1, point.y_coord)
    else
      point = Point.new(point.x_coord - 1, point.y_coord)
    end
    puts "moved to #{point.x_coord}, #{point.y_coord}"
    point
  end

  def movement_allowed(point, direction)
    true
  end
end
