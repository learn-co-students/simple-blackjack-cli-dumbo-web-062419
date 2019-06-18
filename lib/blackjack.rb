def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_sum = deal_card
  card_sum += deal_card
  display_card_total card_sum
  card_sum
end

def hit?(total)
  # code hit? here
  prompt_user
  feedback = get_user_input
  if feedback == "s"
    # dont do anything
  elsif feedback == "h"
    total += deal_card
  else
    invalid_command
  end
  total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  prev_total = total
  until total > 21 do
    total = hit? total
    if total > prev_total
      display_card_total total
      prev_total = total
    end
  end
  end_game total
end