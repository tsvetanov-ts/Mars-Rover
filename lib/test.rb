# frozen_string_literal: true
require_relative 'board'
require_relative 'commander'

b = Board.new
puts b.obstacles.inspect

# c = Commander.new('RLM')
# c.next_command
# c.next_command
# puts c.commands
#
# b = Board.new
# b.fill_obstacles

# new(0..9).each do |j|
#   puts "#{j} #{rand(10)},#{rand(10)}" if (rand(4...9) % 3).zero?
# end

