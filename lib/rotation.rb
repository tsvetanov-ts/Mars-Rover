require_relative '../lib/direction'

module Rotation
  attr :dir

  def rotate(direction, clockwise = 'R')
    if clockwise == 'R'
      rotate_right(direction)
    else
      rotate_left(direction)
    end
  end

  def rotate_left(direction)
    case direction.direction
    when 'north' then Direction.new('west')
    when 'south' then Direction.new('east')
    when 'west' then Direction.new('south')
    when 'east' then Direction.new('north')
    else raise StandardError, 'Rotation not allowed!'
    end
  end

  def rotate_right(direction)
    case direction.direction
    when 'north' then Direction.new('east')
    when 'south' then Direction.new('west')
    when 'west' then Direction.new('north')
    when 'east' then Direction.new('south')
    else raise StandardError, 'Rotation not allowed!'
    end
  end

  # turn around if border has been reached
  def flip_direction(direction)
    case direction.direction
    when 'north' then Direction.new('south')
    when 'south' then Direction.new('north')
    when 'west' then Direction.new('east')
    when 'east' then Direction.new('west')
    else raise StandardError, 'Rotation not allowed!'
    end
  end
end
