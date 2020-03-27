require 'move'
require 'direction'
require 'point'
require 'rotation'
require_relative '../config/constants'

RSpec.describe Move do
  include Constants
  include Rotation
  include Move

  before(:each) do
    @entry_point = Point.new(0, 0)
    @east_or_opposite_point =  Point.new(1, 0)
    @south_point = Point.new(0, 1)
  end

  it 'moves one step east' do
    direction = Direction.new('east')
    expect(step_forward(@entry_point, direction) == @east_or_opposite_point)
  end

  it 'moves one step south' do
    direction = Direction.new('south')
    expect(step_forward(@entry_point, direction) == @south_point)
  end

  it 'hits the border and moves one step in opposite direction' do
    direction = Direction.new('west')
    expect(step_forward(@entry_point, direction) == @east_or_opposite_point)
  end
end


