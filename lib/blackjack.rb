def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
card_nums = [ 1, 2, 3, 4, 5, 6 , 7, 8, 9, 10, 11]
card_nums.shuffle.first
# or card_nums.sample
end

def display_card_total(sum)
  # code #display_card_total here
  puts "Your cards add up to #{sum}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
 gets.chomp
 #learn what gets.chomp means
end

def end_game(num)
  # code #end_game here
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card 
  display_card_total(sum)
  return sum
  end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

def hit?(num)
  # code hit? here
  prompt_user
  input = get_user_input
  
    if input == "s"
      sum = num
      elsif input == "h"
        sum = num + deal_card 
        sum
      else
        invalid_command
        hit?(num)
        end
      sum
  
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  sum = initial_round
    if sum <= 21
      new_sum = hit?(sum)
      display_card_total(new_sum)
    end
  end_game(new_sum)
end
    
