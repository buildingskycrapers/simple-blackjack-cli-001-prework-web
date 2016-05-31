def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
    puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(card_total)
  sum = card_total
  prompt_user
  user_input = get_user_input
  if user_input == "h"
    sum += deal_card(sum)
  else
    invalid_command
  end
  sum
end

def invalid_command

end

def runner
  welcome
  sum = initial_round
  until sum > 21 do
    sum = hit?(sum)
  display_card_total(sum)
  end
  end_game(sum)
end
