require 'commander'

RSpec.describe Commander do

  it 'creates command instructions' do
    commands = 'RMLM'
    cmd = Commander.new(commands)
    expect(cmd.commands).to eq(commands.split(''))
  end

  it 'runs one command' do
    commands = 'M'
    cmd = Commander.new(commands)
    expect(cmd.run).to eq('0,1,N')
  end

  it 'flips direction when no obstacles are hit' do
    commands = 'MMMMMMMMMM' # 10 movements
    cmd = Commander.new(commands, false)
    cmd.run
    expect(cmd.run).to eq('0,8,N')
  end

  it 'fails due to illegal command' do
    commands = 'OMG'
    expect { Commander.new(commands) }.to raise_error(StandardError)
  end

end