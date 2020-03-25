require_relative './move'
require_relative './board'
require_relative './rotation'
require_relative '../config/constants'
class Commander
  include Rotation, Constants
  attr_accessor :commands
  def allowed
    %w[L R M]
  end

  def initialize(list, name = 'Keen')
    @name = name
    @commands = []
    command_list = list.split('')
    command_list.each(&method(:verify_commands))
    @current_point = Point.new(START_X, START_Y)
    @move = Move.new(@current_point, START_DIRECTION)
    @current_direction = Direction.new(START_DIRECTION)
    @board = Board.new
    @stuck = false
  end

  def run
    until @commands.empty?
      cmd = next_command
      # puts cmd
      rotate(@current_direction, cmd) unless cmd == 'M'
      @current_point = @move.step_forward(@move.current_point, @current_direction)
      @stuck = true if @board.obstacle?(@current_direction)
    end
    rest
  end

  def rest
    finish = ''
    finish += 'O,' if @stuck
    finish += "#{@current_point.x_coord},#{@current_point.y_coord},#{@current_direction}"

    puts finish
  end

  def next_command
    @commands.shift
  end

  private

  def verify_commands(command)
    unless allowed.include? command
      raise StandardError, "Unknown command #{command} !"
    end
    @commands.push(command)
  end
end