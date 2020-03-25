require 'move'
require 'direction'
require 'point'
require 'rotation'
require_relative '../config/constants'

RSpec.describe Move do
  include Constants
  include Rotation

  it 'moves one step east' do
    entry_point = Point.new(0, 0)
    next_point = Point.new(1, 0)
    direction = Direction.new('east')
    m = Move.new(entry_point, direction)
    expect(m.step_forward(entry_point, direction.direction) == next_point)
  end

  it 'hits the border and moves one step in opposite direction' do
    entry_point = Point.new(0, 0)
    next_point = Point.new(1, 0)
    direction = Direction.new('west')
    m = Move.new(entry_point, direction)
    expect(m.step_forward(entry_point, direction.direction) == next_point)
  end

end


