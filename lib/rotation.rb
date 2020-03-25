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
    when 'north' then direction.set_dir('west')
    when 'south' then direction.set_dir('east')
    when 'west' then direction.set_dir('south')
    when 'east' then direction.set_dir('north')
    else raise StandardError, 'Rotation not allowed!'
    end
  end

  def rotate_right(direction)
    case direction.direction
    when 'north' then direction.set_dir('east')
    when 'south' then direction.set_dir('west')
    when 'west' then direction.set_dir('north')
    when 'east' then direction.set_dir('south')
    else raise StandardError, 'Rotation not allowed!'
    end
  end

  # turn around if border has been reached
  def flip_direction(direction)
    case direction.direction
    when 'north' then direction.set_dir('south')
    when 'south' then direction.set_dir('north')
    when 'west' then direction.set_dir('east')
    when 'east' then direction.set_dir('west')
    else raise StandardError, 'Rotation not allowed!'
    end
  end
end
