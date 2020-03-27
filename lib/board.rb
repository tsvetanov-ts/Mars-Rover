# frozen_string_literal: true
require_relative './point'
require_relative './rotation'
require_relative './direction'
require_relative './move'
require_relative '../config/constants'

class Board
  include Constants
  include Rotation
  include Move

  attr :obstacles

  def initialize(has_obstacles = true)
    @obstacles = has_obstacles ?  generate_obstacles : []

  end

  def obstacle?(point)
    @obstacles[point.y_coord * 10 + point.x_coord]
  end

  private

  def generate_obstacles
    obstacles = []
    (0..9).each do |i|
      (0..9).each do |j|
        obstacles[i * 10 + j] = (rand(12..23) % 11).zero? ? true : false
      end
    end
    # make sure there is no obstacle in start position
    obstacles[START_Y * 10 + START_X] = false
    obstacles
  end
end


