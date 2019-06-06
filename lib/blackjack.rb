require 'pry'

# Prints "Welcome to the Blackjack Table" to the screen
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

# Generates a random number between 1-11
# Returns the random number
def deal_card
  # code #deal_card here
  rand(1..11)
end

# Accepts one argument, the card total
# Prints the value of the cards to the screen
def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

# Gives user instructions for hitting or staying
def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

# Returns the value of a `gets.chomp` method
def get_user_input
  # code #get_user_input here
  gets.chomp
end

# Takes one argument, card total
# Prints apology, card total, and thank you message
# Prints "Sorry, you hit #{card_total}. Thanks for playing!"
def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

# Calls on #deal_card twice and returns the sum
# Calls on the '#display_card_total' to print the sum of cards
# Returns the sum of the dealt cards
def initial_round
  # code #initial_round here
  card_total = 0
  card_total += deal_card
  card_total += deal_card
  display_card_total(card_total)
  card_total
end

# Takes an argument of the current card total
# Calls on #prompt_user then #get_user_input
# Returns an integer which is the card total
# Does not deal another card if user types 's'
# Deals another card when user types 'h'
# If the player's input is neither 'h' nor 's', invoke #invalid_command
# Returns an integer which is the card total
def hit?(card_total)
  # code #hit? here
  prompt_user
  user_input = get_user_input

  if user_input == 's'
    # Instead of prompting the user again, return card_total
    # prompt_user
    card_total

  elsif user_input == 'h'
    card_total += deal_card

  else
    # invalid_command
    # prompt_user

    # Recursion variation
    invalid_command
    hit?(card_total)
  end
  
  card_total
end

# Prints 'Please enter a valid command' when called
def invalid_command
  # code #invalid_command here
  puts "Please enter a valid command"
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

# Calls on the #welcome method,
# Then on the #initial_round method,
# Then calls #hit? and #display_card_total methods
# -until- the card sum is greater than 21,
# Then calls on the #end_game method
def runner
  # code #runner here
  welcome
  card_total = initial_round

  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end

  end_game(card_total)
end
    
