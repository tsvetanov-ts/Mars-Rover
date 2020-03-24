class Commander
  attr_accessor :commands
  def allowed
    %w[L R M]
  end

  def initialize(list, name = 'Keen')
    @name = name
    @commands = []
    command_list = list.split('')
    command_list.each(&method(:verify_commands))
  end

  def next_command
    @commands.shift
    # @commands.pop while @commands.any?
  end

  private

  def verify_commands(command)
    unless allowed.include? command
      raise StandardError, "Unknown command #{command} !"
    end
    @commands.push(command)
  end
end