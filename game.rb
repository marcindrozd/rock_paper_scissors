# Rock, paper, scissors
CHOICES = {"p" => "paper", "r" => "rock", "s" => "scissors"}

def display_winning_message(winning_choice, winner, losing_choice, loser)
  puts "#{winner} picked #{CHOICES[winning_choice]}, #{loser} picked #{CHOICES[losing_choice]}"
  case winning_choice
    when "p"
      puts "Paper wraps rock!"
    when "s"
      puts "Scissors cut through paper!"
    when "r"
      puts "Rock smashes scissors!"
  end
  puts "#{winner} wins!"
end

puts "Play Paper Rock Scissors!"

while true
  while true
    puts "Choose one: (p/r/s)"
    player_choice = gets.chomp.downcase
    break if CHOICES.keys.include? player_choice
  end

  computer_choice = CHOICES.keys.sample # sample selects random value from array

  if computer_choice == player_choice
    puts "It's a tie!"
  elsif (player_choice == "p" && computer_choice == "r") || (player_choice == "s" && computer_choice == "p") || (player_choice == "r" && computer_choice == "s")
    display_winning_message(player_choice, "Player", computer_choice, "Computer")
  else 
    display_winning_message(computer_choice, "Computer", player_choice, "Player")
  end

  puts "Play again? (y/n)"
  response = gets.chomp.downcase
  break if response != "y"
end