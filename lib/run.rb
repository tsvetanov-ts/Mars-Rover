module Runner

  require_relative 'board'
  require_relative 'point'
  require_relative 'commander'
  require_relative 'move'
  include Constants
  include Move

  b = Board.new
  puts b.obstacles
  commands = ARGV.empty? ? 'MM' : ARGV[0]

  first_run = Commander.new(commands).commands
  initial_point = Point.new(START_X, START_Y)
  start_direction = START_DIRECTION
# move_one = Move.new(initial_point, start_direction)
  first_point = step_forward(initial_point, 'east')
  second_point = step_forward(first_point, 'east')

end