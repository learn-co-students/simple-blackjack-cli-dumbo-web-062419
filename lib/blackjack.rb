def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand 1..11

    
end

def display_card_total(number)
   puts "Your cards add up to #{number}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end
  # code #prompt_user here

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  first_round = deal_card + deal_card
  display_card_total(first_round)
  return first_round
  # code #initial_round here
end

def hit?(num)
  prompt_user
  input = get_user_input
  if input == "h"
    num  += deal_card
  elsif input == "s"
   num
  else 
    invalid_command
     hit?(num)
  end
  # code hit? here
end



def invalid_command
  puts "Please enter a valid command"
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
    
