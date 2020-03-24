module Direction
  attr :dir
  @allowed = %w[north south west east]

  def set(dir)
    @dir = dir if @allowed.include? dir.downcase
  end
end
