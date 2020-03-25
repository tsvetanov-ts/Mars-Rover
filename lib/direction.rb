class Direction
  attr :direction

  def initialize(dir)
    @direction = set_dir(dir)
  end

  def set_dir(dir)
    allowed = %w[north south west east]
    @direction = dir if allowed.include? dir.downcase
  end
end
