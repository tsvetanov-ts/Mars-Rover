class Command
  def self.allowed
    %w[L R M]
  end

  def initialize(list)
    @command_list = list.include
  end

end