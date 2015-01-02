# Rock, paper, scissors
CHOICES = {"p" => "paper", "r" => "rock", "s" => "scissors"}

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
  elsif player_choice == "p" && computer_choice == "s"
    puts "You picked Paper and computer picked Scissors."
    puts "Scissors cut through paper."
    puts "Computer wins!"
  elsif player_choice == "s" && computer_choice == "r"
    puts "You picked Scissors and computer picked Rock."
    puts "Rock destroys Scissors."
    puts "Computer wins!"
  elsif player_choice == "r" && computer_choice == "p"
    puts "You picked Rock and computer picked Paper."
    puts "Paper wraps Rock."
    puts "Computer wins!"
  elsif player_choice == "p" && computer_choice == "r"
    puts "You picked Paper and computer picked Rock."
    puts "Paper wraps Rock."
    puts "Player wins!"
  elsif player_choice == "s" && computer_choice == "p"
    puts "You picked Scissors and computer picked Paper."
    puts "Scissors cut through paper."
    puts "Player wins!"
  elsif player_choice == "r" && computer_choice == "s"
    puts "You picked Rock and computer picked Scissors."
    puts "Rock destroys Scissors."
    puts "Player wins!"
  end

  puts "Play again? (y/n)"
  response = gets.chomp.downcase
  break if response != "y"
end