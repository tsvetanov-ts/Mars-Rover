# frozen_string_literal: true
require_relative 'Point'

class Board
  include Rotation
  include Direction
  include Move
  attr :obstacles

  def initialize
    @obstacles = [100]
    fill_obstacles
  end

  def hit_obstacle(point)
    true if @obstacles[point.y_coord * 10 + point.x_coord] == true
  end

  def hit_wall(point)

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


