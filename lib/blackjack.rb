def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  srand Time.now.to_i
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

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  a, b = deal_card, deal_card
  total = a+b
  display_card_total(total)
  total
end

def hit?(current_total)
  prompt_user
  token = get_user_input
  
  if token == 'h'
    new_card = deal_card
    current_total += new_card
  elsif token == 's'
    true
  else
    invalid_command
    hit?(current_total)
  end
  current_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum = initial_round
  until sum > 21 do
    sum = hit?(sum)
    display_card_total(sum)
  end
  end_game(sum)
end
    
