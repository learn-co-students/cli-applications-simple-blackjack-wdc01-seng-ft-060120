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

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  
sum  = deal_card + deal_card

   display_card_total(sum)
  return sum
  
end

def invalid_command
  
  puts "Please enter a valid command"
end

def hit?(current_total)

  prompt_user
  user_input = get_user_input
  
  if user_input == 's'
    current_total
  elsif user_input == 'h'
    new_card = deal_card + current_total
    new_card
  else 
     prompt_user
    user_input = get_user_input
  
    invalid_command
  end
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


    
