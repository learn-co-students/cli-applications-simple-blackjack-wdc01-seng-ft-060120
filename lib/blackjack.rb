require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp 
end

def end_game(card_total)
  puts  "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
 first = deal_card
 second = deal_card
 sum = first + second
 display_card_total(sum)
 return sum
 
end



def hit?(card_total)
  prompt_user
  user_input = get_user_input
  if user_input == "h"
    card_total += deal_card
    elsif user_input == "s"
    card_total
  else 
    invalid_command
      prompt_user
      get_user_input
  end 
end

def invalid_command
  puts "Please enter a valid command"
end


def runner
  welcome 
  total = initial_round
  until total > 21
  total = hit?(total)
  display_card_total(total)
end 
end_game(total)
 
end
