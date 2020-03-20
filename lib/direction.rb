# frozen_string_literal: true

class Direction
  def self.allowed
    %w[north south west east]
  end

  def set(dir)
    @dir = dir if allowed.include? dir.downcase
  end
end
