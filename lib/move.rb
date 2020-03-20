class Move
  def initialize(point, direction)
    @point = point
    @direction = direction
  end

  def obstacle?(point)
    @obstacle = point.obstacle ? true : false
  end
end
