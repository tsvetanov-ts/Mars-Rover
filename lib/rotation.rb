module Rotation
  attr :direction

  def rotate(direction, clockwise)
    if clockwise
      rotate_right(direction)
    else
      rotate_left(direction)
    end
  end

  def rotate_left(direction)
    case direction.dir
    when 'north' then direction.set('west')
    when 'south' then direction.set('east')
    when 'west' then direction.set('south')
    when 'east' then direction.set('north')
    else raise StandardError, 'Rotation not allowed!'
    end
  end

  def rotate_right(direction)
    case direction.dir
    when 'north' then direction.set('east')
    when 'south' then direction.set('west')
    when 'west' then direction.set('north')
    when 'east' then direction.set('south')
    else raise StandardError, 'Rotation not allowed!'
    end
  end

  # turn around (e.g. if wall or obstacle has been reached)
  def flip_direction(direction)
    case direction.dir
    when 'north' then direction.set('south')
    when 'south' then direction.set('north')
    when 'west' then direction.set('east')
    when 'east' then direction.set('west')
    else raise StandardError, 'Rotation not allowed!'
    end
  end
end
