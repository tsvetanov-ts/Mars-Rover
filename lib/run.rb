require_relative '../lib/commander'

module Runner
  include Constants

  commands = ARGV.empty? ? 'MMM' : ARGV[0]
  commander = Commander.new(commands)
  puts commander.run

end