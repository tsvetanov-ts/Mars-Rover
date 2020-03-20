class Rotation
  def initialize(direction)
    @direction = direction
  end

  def rotate(direction, clockwise)
    if clockwise
      rotate_right(direction)
    else
      rotate_left(direction)
    end
  end

  def rotate_left(direction)
    case direction.dir
    when 'north'
      direction.set('west')
    when 'south'
      direction.set('east')
    when 'west'
      direction.set('south')
    when 'east'
      direction.set('north')
    else
      raise StandardError, 'Rotation not allowed!'
    end
  end

  def rotate_right(direction)
    case direction.dir
    when 'north'
      direction.set('east')
    when 'south'
      direction.set('west')
    when 'west'
      direction.set('north')
    when 'east'
      direction.set('south')
    else raise StandardError, 'Rotation not allowed!'
    end
  end

  def flip_direction(direction)
    case direction.dir
    when 'north'
      direction.set('south')
    when 'south'
      direction.set('north')
    when 'west'
      direction.set('east')
    when 'east'
      direction.set('west')
    else
      raise StandardError, 'Rotation not allowed!'
    end
  end
end
