require 'move'
require 'direction'
require 'point'
require 'rotation'
require_relative '../config/constants'

RSpec.describe Rotation do
  include Constants
  include Rotation

  it 'rotates left' do
    direction = Direction.new('north')
    expected_direction = Direction.new('west')
    expect(rotate(direction,'L') == expected_direction)
  end

  it 'rotates right' do
    direction = Direction.new('north')
    expected_direction = Direction.new('east')
    expect(rotate(direction) == expected_direction)
  end

  it 'flips direction -- turns around' do
    direction = Direction.new('north')
    expected_direction = Direction.new('south')
    expect(flip_direction(direction) == expected_direction)
  end


end


