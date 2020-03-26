require_relative './move'
require_relative './board'
require_relative './rotation'
require_relative '../config/constants'

class Commander
  include Constants
  include Rotation
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
    @current_direction = Direction.new(START_DIRECTION)
    @move = Move.new(@current_point, @current_direction)
    @board = Board.new
    @stuck = false
  end

  def run
    @move = Move.new(@current_point, @current_direction)
    @current_direction = Direction.new(START_DIRECTION)

    @commands.each do |c|
      @stuck = true if @board.obstacle?(@current_point)
      break if @stuck

      if c == 'M'
        @move = Move.new(@current_point, @current_direction)
        @current_point = @move.step_forward(@current_point, @current_direction)
      else
        @current_direction = rotate(@current_direction, c)
      end

    end
    rest
  end

  def rest
    finish = ''
    finish += 'O,' if @stuck
    finish + "#{@current_point.x_coord},#{@current_point.y_coord},#{translate_direction(@current_direction.direction)}"
  end


  private

  def verify_commands(command)
    unless allowed.include? command
      raise StandardError, "Unknown command #{command} !"
    end

    @commands.push(command)
  end

  def translate_direction(dir)
    case dir
    when 'north'
      'N'
    when 'south'
      'S'
    when 'west'
      'W'
    else
      'E'
    end
  end

end