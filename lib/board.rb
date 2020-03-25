# frozen_string_literal: true
require_relative './point'
require_relative './rotation'
require_relative './direction'
require_relative './move'

class Board
  include Rotation
  attr :obstacles

  def initialize
    @obstacles = [100]
    fill_obstacles
  end

  def obstacle?(point)
    @obstacles[point.y_coord * 10 + point.x_coord]
  end



  private

  def fill_obstacles
    (0..9).each do |i|
      (0..9).each do |j|
        @obstacles[i * 10 + j] = (rand(12..23) % 11).zero? ? true : false
      end
    end
  end
end


