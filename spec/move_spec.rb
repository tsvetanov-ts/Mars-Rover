require 'move'
require 'direction'
require 'point'
require 'rotation'
require_relative '../config/constants'

RSpec.describe Move do
  include Constants
  include Rotation
  include Move

  it 'moves one step east' do
    entry_point = Point.new(0, 0)
    next_point = Point.new(1, 0)
    direction = Direction.new('east')
    expect(step_forward(entry_point, direction) == next_point)
  end

  it 'moves one step south' do
    entry_point = Point.new(0, 0)
    next_point = Point.new(0, 1)
    direction = Direction.new('south')
    expect(step_forward(entry_point, direction) == next_point)
  end

  it 'hits the border and moves one step in opposite direction' do
    entry_point = Point.new(0, 0)
    next_point = Point.new(1, 0)
    direction = Direction.new('west')
    expect(step_forward(entry_point, direction) == next_point)
  end


  it 'hits the border and moves one step in opposite direction' do
    entry_point = Point.new(0, 0)
    next_point = Point.new(1, 0)
    direction = Direction.new('west')
    expect(step_forward(entry_point, direction) == next_point)
  end
end


