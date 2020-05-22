def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand (1..11)
 # code #deal_card here
end

def display_card_total(number)
  puts "Your cards add up to #{number}"

  # code #display_card_total here
end

def prompt_user
  puts  "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  gets 
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
  
# code #initial_round here
end

def hit?(number)
  prompt_user
  input = get_user_input
  until  input == 'h' || 's' == input   do
    invalid_command
       prompt_user
       input = get_user_input
      end  
      if input == 'h'   
        number += deal_card 
  end
 number
  # code hit? here
end

def invalid_command
  puts  "Please enter a valid command"
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  counter = initial_round
 
until counter >= 21   do
  counter = hit?(counter)
  
end

display_card_total(counter)
end_game(counter)
end
   
  # code runner here

    
