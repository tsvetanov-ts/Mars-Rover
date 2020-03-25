require 'board'

RSpec.describe Board do
  it 'creates coordinate board' do
    b = Board.new
    expect(b.obstacles)
  end

  it 'some board squares has obstacles, some don\'t' do
    b = Board.new
    expect(b.obstacles.include?(false))
    expect(b.obstacles.include?(true))
  end

  it 'no obstacles' do
    b = Board.new(false)
    expect(b.obstacles.include?(false))
    expect(!b.obstacles.include?(true))
  end
end
