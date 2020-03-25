class Direction
  attr :direction
  @@allowed = %w[north south west east]

  def initialize(dir)
    @direction = set_dir(dir)
  end

  def set_dir(dir)
    @direction = dir if @@allowed.include? dir.downcase
  end
end
