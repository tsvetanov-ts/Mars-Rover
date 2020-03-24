require 'point'

RSpec.describe Point do
  it 'creates new point' do
    x = 1
    y = 2
    p = Point.new(x, y)
    expect(p.x_coord).to eq(x)
    expect(p.y_coord).to eq(y)
  end

  it 'raises out of bounds error' do
    x = 11
    y = 2
    expect { Point.new(x, y) }
        .to raise_error(StandardError, "coordinate must be integer between (O,0) and (9,9)!")
  end
end

