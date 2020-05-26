require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp 
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round 
  card_1 = deal_card
  card_2 = deal_card 
  card_total = card_1 + card_2 
 display_card_total(card_total)
 card_total 
end

def hit?(card_total)
  prompt_user 
  player_input = get_user_input 

  while player_input != "h" && player_input != "s"
    invalid_command
    prompt_user
    player_input = get_user_input 
  end 
    
  if player_input == "h"
    card_total += deal_card 
  end 
  
  return card_total  
end

def invalid_command
  puts "Please enter a valid command" 
end



def runner
  welcome
  total = initial_round 
 

  #player_input = get_user_input
  
  until total > 21 do 
    total = hit?(total)
   # if player_input == "s" 
   #   hit?(total)
   # end 
    #total = hit?(total)
  display_card_total(total)
  end 
  end_game(total)
end 
    
    

