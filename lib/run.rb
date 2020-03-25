require_relative '../lib/commander'

module Runner
  include Constants

  commands = ARGV.empty? ? 'MM' : ARGV[0]
  commander = Commander.new(commands)
  commander.run

end