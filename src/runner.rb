require_relative 'raffle.rb'
require_relative 'command_line_style.rb'
require_relative 'actions.rb'

style   = CmdStyle.new()
actions = Actions.new()
raffle  = Raffle::Create.new()
#
#
#
style.line
style.space

actions.welcome

style.space
style.line

style.space
style.space

file = actions.get_file_name

parsed_file = Raffle::CsvWrapper.new(file).parse_file
raffle.load_tickets(parsed_file)
raffle.distribute_tickets

style.space
style.space

number_of_winners = actions.get_number_of_winners
winners = raffle.pick_winners(number_of_winners.to_i)

style.space
style.space

actions.announce_winners(winners)
