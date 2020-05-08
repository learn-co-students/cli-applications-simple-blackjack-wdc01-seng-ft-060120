def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(11) + 1
  card
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(end_total)
  puts "Sorry, you hit #{end_total}. Thanks for playing!"
end

def initial_round
  total=0
  total += deal_card
  total += deal_card
  display_card_total(total)
  total
end

def hit?(current_total)
  total = current_total
  prompt_user
  input = get_user_input
  if input == 's'
    total
  elsif input == 'h'
    total += deal_card
  else
    invalid_command
    hit?(total)
  end
  total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21 do
    total = hit?(total) 
    display_card_total(total)
  end
  end_game(total)
end
    
