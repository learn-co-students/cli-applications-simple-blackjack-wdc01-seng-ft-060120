#welcome message
def welcome
  puts "Welcome to the Blackjack Table"
end
#gives a card number
def deal_card
  card = rand(11) + 1
end
#prints #[total] in a message
def display_card_total(total)
  puts "Your cards add up to #{total}"
end
#prompts for hit or stay input
def prompt_user
  puts "Type \'h\' to hit or \'s\' to stay"
end
#returns users input
def get_user_input
  inp = gets.chomp
end
#shows total and gives end of game message
def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end
#first round of game
#deal 2 cards, add them, print total, return sum
def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  total
end

def hit?(total)
  prompt_user
  input = get_user_input
  if (input == 'h')
    total += deal_card
  elsif (input != 's')#neither 's' or 'h' inputted
    invalid_command
    #REMOVED prompt_user -- already repeats when funtion loops in runner
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
  until total >= 21
    total = hit?(total)
    end
  end_game(total)
end
runner
