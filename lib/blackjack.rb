def welcome
  puts"Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(initial_round)
  # code #display_card_total here
 puts "Your cards add up to #{initial_round}"
end

def prompt_user
  # code #prompt_user here
  puts"Type 'h' to hit or 's' to stay"

end

def get_user_input
  # code #get_user_input here
  return gets.chomp
end

def end_game(get_user_input)
  # code #end_game here
  apology ="Sorry"
  card_total = get_user_input
  thank_you_message = "Thanks for playing!"

  puts "#{apology}, you hit #{card_total}. #{thank_you_message}"
end

def initial_round()
  # code #initial_round here
  new_sum = deal_card  + deal_card
  puts "Your cards add up to #{new_sum}"
  return new_sum
  display_card_total(new_sum)
  # puts"#{rex}"
end

def hit?(display_card_total)
  # code hit? here
  prompt_user
  rtnd_inpt = get_user_input
  until rtnd_inpt == "h" ||rtnd_inpt == "s"
    invalid_command
    rtnd_inpt = get_user_input
  end
  if rtnd_inpt =="h"
    display_card_total +=deal_card
  elsif rtnd_inpt =="s"
    display_card_total
  end

  #   deal_card
  # elsif rtnd_inpt !="s" || rtnd_inpt !="h"
  #    invalid_command
  # end
  return display_card_total

end

def invalid_command
  # code invalid_command here
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  initial_round
  hit?
  display_card_total
  until display_card_total > 21
    display_card_total = hit?(display_card_total)
  end
end_game
end
