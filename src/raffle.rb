require 'csv'

module Raffle
  class CsvWrapper
    def initialize(file)
      @file = file
    end

    def parse_file
      CSV.open(@file, headers: true, header_converters: :symbol, converters: :all)
    end
  end

  class Create
    def load_tickets(parsed_ticket_file)
      @raw_tickets = parsed_ticket_file.map do |row|
        if row[:progress].to_i >= 72
          tickets = 9 - row[:q1021_1].to_i

          {
            status:       "eligible",
            ip_address:   row[:ipaddress],
            m_turk_code:  row[:mturkcode],
            ticket_total: tickets
          }
        else
          {status: "ineligible"}
        end
      end
    end

    def distribute_tickets
      @all_tickets = []

      @raw_tickets.each { |entrant|
        unless entrant[:status] =="ineligible"
          entrant[:ticket_total].times {
            @all_tickets.push({ m_turk_code: entrant[:m_turk_code], ip_address: entrant[:ip_address] })
          }
        end
      }

      @all_tickets
    end

    def pick_winners(number_of_winners)
      @winners = []
      number_of_winners.times do
        winner_id = grab_from_hat
        @winners.push(winner_id)
      end
      @winners
    end

    def grab_from_hat
      winner = @all_tickets.sample
      if @winners.include?({m_turk_code: winner[:m_turk_code]}) || @winners.include?({ip_address: winner[:ip_address]})
        grab_from_hat
      end
      winner
    end
  end
end
