def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(number)
  # code #display_card_total here
puts  "Your cards add up to #{number}"
 number
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  # code #end_game here
puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  display_card_total(deal_card + deal_card)
  # code #initial_round here
end

def hit?(number)
  prompt_user

  if get_user_input == "s"
    number
  elsif get_user_input == "h"
     number += deal_card
  else
    invalid_command
  end
  # code hit? here
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
