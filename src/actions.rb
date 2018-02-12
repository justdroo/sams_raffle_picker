class Actions
  def welcome
    puts "Welcome to Raffle Picker!"
  end

  def get_file_name
    puts "Please make sure the file is in the src folder and is a csv."
    puts "What is the name of the file?"
    get_user_input
  end

  def get_number_of_winners
    puts "How many winners will there be?"
    get_user_input
  end

  def announce_winners(winners)
    puts "The mTurkCode of the winners are:"
    winners.each { |winner|
      puts winner[:m_turk_code] }
  end

  def get_user_input
    print ">> "
    gets.chomp
  end
end
